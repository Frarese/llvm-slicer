//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.

#include "llvm/IR/Constants.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Pass.h"

#include "llvm/Transforms/Utils/BasicBlockUtils.h"

#include "CreateHammockCFG.h"

using namespace llvm;

static RegisterPass<CreateHammockCFG> Y("create-hammock-cfg",
		"Creates Hammock Graph from Control Flow Graph");
char CreateHammockCFG::ID = 0;

bool CreateHammockCFG::runOnFunction(Function &F) {
  if (F.front().getName() == "start")
	  return false;

  LoopInfo &LI = getAnalysis<LoopInfo>();
  LLVMContext &ctx = F.getContext();
  Function::BasicBlockListType &BBL = F.getBasicBlockList();
  ConstantInt *Ctrue = ConstantInt::getTrue(ctx);
  BasicBlock &entry = BBL.front();

  BasicBlock *BBend = BasicBlock::Create(ctx, "end", &F);
  new UnreachableInst(ctx, BBend);

  BasicBlock *BBstart = BasicBlock::Create(ctx, "start", &F, &entry);
  BranchInst::Create(&entry, BBend, Ctrue, BBstart);

  for (Function::iterator I = BBL.begin(), E = BBL.end(); I != E; ++I) {
    BasicBlock *BB = I;
    if (LI.isLoopHeader(BB)) {
      BasicBlock *BBLoopBody = BB->splitBasicBlock(BB->begin(), "body");
      ReplaceInstWithInst(&BB->back(),
		      BranchInst::Create(BBLoopBody, BBend, Ctrue));
    }
    if (BB == BBend)
      continue;
    if (UnreachableInst *UI =
	llvm::dyn_cast<UnreachableInst>(BB->getTerminator())) {
      ReplaceInstWithInst(UI, BranchInst::Create(BBend));
    }
  }

  return true;
}
