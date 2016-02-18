//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.

#ifndef POST_DOMINANCE_FRONTIER
#define POST_DOMINANCE_FRONTIER


#include "llvm/Analysis/PostDominators.h"

namespace llvm {

  /// PostDominanceFrontier Class - 
  /// used to compute the a post-dominance frontier.
  ///
  struct PostDominanceFrontier : public FunctionPass {
    
    static char ID;
    PostDominanceFrontier() : FunctionPass(ID) { }

    virtual bool runOnFunction(Function &F);
    virtual void getAnalysisUsage(AnalysisUsage &AU) const {
      AU.setPreservesAll();
      AU.addRequired<PostDominatorTree>();
    }
    
    public:
      typedef std::set<BasicBlock*>             DomSetType;    // Dom set for a bb
      typedef std::map<BasicBlock*, DomSetType> DomSetMapType; // Dom set map
      typedef DomSetMapType::iterator iterator;
      
      typedef DomSetMapType::const_iterator const_iterator;
      iterator       begin()       { return Frontiers.begin(); }
      const_iterator begin() const { return Frontiers.begin(); }
      iterator       end()         { return Frontiers.end(); }
      const_iterator end()   const { return Frontiers.end(); }
      iterator       find(BasicBlock *B)       { return Frontiers.find(B); }
      const_iterator find(BasicBlock *B) const { return Frontiers.find(B); }

    protected:
      DomSetMapType Frontiers;
      std::vector<BasicBlock*> Roots;


    private:
#ifdef CONTROL_DEPENDENCE_GRAPH
    typedef std::pair<DomTreeNode *, DomTreeNode *> Ssubtype;
    typedef std::set<Ssubtype> Stype;

    void calculate(const PostDominatorTree &DT, Function &F);
    void constructS(const PostDominatorTree &DT, Function &F, Stype &S);
    const DomTreeNode *findNearestCommonDominator2(const PostDominatorTree &DT,
		    DomTreeNode *A, DomTreeNode *B);
#else
    const DomSetType &calculate(const PostDominatorTree &DT,
                                const DomTreeNode *Node);
#endif
  };
}

#endif
