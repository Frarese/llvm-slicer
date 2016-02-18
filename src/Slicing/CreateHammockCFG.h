//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.

#ifndef CREATE_HAMMOCK_CFG
#define CREATE_HAMMOCK_CFG

#include "llvm/Analysis/LoopInfo.h"

namespace llvm {

  struct CreateHammockCFG : public FunctionPass {
    static char ID;

    CreateHammockCFG() : FunctionPass(ID) { }

    virtual bool runOnFunction(Function &F);

    virtual void getAnalysisUsage(AnalysisUsage &AU) const {
      AU.addRequired<LoopInfo>();
    }
  };

}

#endif
