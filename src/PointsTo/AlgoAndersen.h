// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.

#ifndef POINTSTO_ALGOANDERSEN_H
#define POINTSTO_ALGOANDERSEN_H

#include "PointsTo.h"
#include "Fixpoint.h"

#include <boost/tr1/functional.hpp>

namespace llvm { namespace ptr {

  struct ANDERSEN {};

}}

namespace llvm { namespace ptr {

  template<typename Language>
  typename PointsToSets<ANDERSEN>::Type&
  computePointsToSets(ProgramStructure const& P,
                      typename PointsToSets<ANDERSEN>::Type& S,
                      ANDERSEN) {
      return fixpoint<Language,ANDERSEN>(P,S);
  }

}}

namespace llvm { namespace ptr {

  template<typename Language>
    typename RuleFunction<Language,ANDERSEN>::Type
    getRuleFunction(ASSIGNMENT<
                        VARIABLE<const llvm::Value *>,
                        VARIABLE<const llvm::Value *>
                        > const& E,
                    ANDERSEN)
    {
        struct local
        {
            static bool function(typename PointsToSets<ANDERSEN>
                                    ::Type& S,
                                 const llvm::Value *lval,
                                 const llvm::Value *rval
                                 )
            {
                typedef typename PointsToSets<ANDERSEN>::Type::PointsToSet
                        PointsToSet;
                PointsToSet& L = S[lval];
                PointsToSet const& R = S[rval];
                std::size_t const old_size = L.size();
                std::copy(R.begin(),R.end(),std::inserter(L,L.end()));
                return old_size != L.size();
            }
        };
        using std::tr1::bind;
        using std::tr1::placeholders::_1;
        return bind(&local::function,_1,
                    E.getArgument1().getArgument(),
                    E.getArgument2().getArgument());
    }

  template<typename Language>
    typename RuleFunction<Language,ANDERSEN>::Type getRuleFunction(
           ASSIGNMENT<
                        VARIABLE<const llvm::Value *>,
                        REFERENCE<
                            VARIABLE<const llvm::Value *> >
                        > const& E,
                    ANDERSEN)
    {
        struct local
        {
            static bool function(typename PointsToSets<ANDERSEN>::Type& S,
                                 const llvm::Value *lval,
                                 const llvm::Value *rval
                                 )
            {
                typedef typename PointsToSets<ANDERSEN>::Type::PointsToSet
                        PointsToSet;
                PointsToSet& L = S[lval];
                std::size_t const old_size = L.size();
                L.insert(rval);
                return old_size != L.size();
            }
        };
        using std::tr1::bind;
        using std::tr1::placeholders::_1;
        return bind(&local::function,_1,
                    E.getArgument1().getArgument(),
                    E.getArgument2().getArgument().getArgument());
    }

  template<typename Language>
    typename RuleFunction<Language,ANDERSEN>::Type
    getRuleFunction(ASSIGNMENT<
                        VARIABLE<const llvm::Value *>,
                        DEREFERENCE< VARIABLE<const llvm::Value *> >
                        > const& E,
                    ANDERSEN)
    {
        struct local
        {
            static bool function(typename PointsToSets<ANDERSEN>::Type& S,
                                 const llvm::Value *lval,
                                 const llvm::Value *rval
                                 )
            {
                typedef typename PointsToSets<ANDERSEN>::Type::PointsToSet
                        PointsToSet;
                PointsToSet& L = S[lval];
                PointsToSet& R = S[rval];
                std::size_t const old_size = L.size();
                for (typename PointsToSet::const_iterator i = R.begin(); i!=R.end(); ++i) {
                    PointsToSet& X = S[*i];
                    std::copy(X.begin(),X.end(),std::inserter(L,L.end()));
                }
                return old_size != L.size();
            }
        };
        using std::tr1::bind;
        using std::tr1::placeholders::_1;
        return bind(&local::function,_1,
                    E.getArgument1().getArgument(),
                    E.getArgument2().getArgument().getArgument());
    }

  template<typename Language>
    typename RuleFunction<Language,ANDERSEN>::Type
    getRuleFunction(ASSIGNMENT<
                        DEREFERENCE< VARIABLE<const llvm::Value *> >,
                        VARIABLE<const llvm::Value *>
                        > const& E,
                    ANDERSEN)
    {
        struct local
        {
            static bool function(typename PointsToSets<ANDERSEN>
                                    ::Type& S,
                                 const llvm::Value *lval,
                                 const llvm::Value *rval
                                 )
            {
                typedef typename PointsToSets<ANDERSEN>::Type::PointsToSet
                        PointsToSet;
                PointsToSet& L = S[lval];
                PointsToSet& R = S[rval];
                bool change = false;
                for (typename PointsToSet::const_iterator i = L.begin(); i!=L.end(); ++i)
                {
                    PointsToSet& X = S[*i];
                    std::size_t const old_size = X.size();
                    std::copy(R.begin(),R.end(),std::inserter(X,X.end()));
                    change = change || X.size() != old_size;
                }
                return change;
            }
        };
        using std::tr1::bind;
        using std::tr1::placeholders::_1;
        return bind(&local::function,_1,
                    E.getArgument1().getArgument().getArgument(),
                    E.getArgument2().getArgument());
    }

    template<typename Language>
    typename RuleFunction<Language,ANDERSEN>::Type
    getRuleFunction(ASSIGNMENT<
                        DEREFERENCE<
                            VARIABLE<const llvm::Value *> >,
                        REFERENCE<
                            VARIABLE<const llvm::Value *> >
                        > const& E,
                    ANDERSEN)
    {
        struct local
        {
            static bool function(typename PointsToSets<ANDERSEN>
                                    ::Type& S,
                                 const llvm::Value *lval,
                                 const llvm::Value *rval
                                 )
            {
                typedef typename PointsToSets<ANDERSEN>::Type::PointsToSet
                        PointsToSet;
                PointsToSet& L = S[lval];
                bool change = false;
                for (typename PointsToSet::const_iterator i = L.begin(); i!=L.end(); ++i)
                {
                    PointsToSet& X = S[*i];
                    std::size_t const old_size = X.size();
                    X.insert(rval);
                    change = change || X.size() != old_size;
                }
                return change;
            }
        };
        using std::tr1::bind;
        using std::tr1::placeholders::_1;
        return bind(&local::function,_1,
                    E.getArgument1().getArgument().getArgument(),
                    E.getArgument2().getArgument().getArgument());
    }

    template<typename Language>
    typename RuleFunction<Language,ANDERSEN>::Type
    getRuleFunction(ASSIGNMENT<
                        DEREFERENCE<
                            VARIABLE<const llvm::Value *> >,
                        DEREFERENCE<
                            VARIABLE<const llvm::Value *> >
                        > const& E,
                    ANDERSEN) {
        struct local {
            static bool function(typename PointsToSets<ANDERSEN>::Type& S,
                                 const llvm::Value *lval,
                                 const llvm::Value *rval
                                 )
            {
                typedef typename PointsToSets<ANDERSEN>::Type::PointsToSet
                        PointsToSet;
                PointsToSet& L = S[lval];
                bool change = false;
                for (typename PointsToSet::const_iterator i = L.begin(); i!=L.end(); ++i)
                    if (getRuleFunction<Language>(
                            (ruleVar(*i) = *ruleVar(rval)).getSort(),ANDERSEN())
                            (S))
                        change = true;
                return change;
            }
        };
        using std::tr1::bind;
        using std::tr1::placeholders::_1;
        return bind(&local::function,_1,
                    E.getArgument1().getArgument().getArgument(),
                    E.getArgument2().getArgument().getArgument());
    }

    template<typename Language>
    typename RuleFunction<Language,ANDERSEN>::Type
    getRuleFunction(ASSIGNMENT<
                        VARIABLE<const llvm::Value *>,
                        ALLOC<const llvm::Value *>
                        > const& E,
                    ANDERSEN)
    {
        struct local
        {
            static bool function(typename PointsToSets<ANDERSEN>::Type& S,
                                 const llvm::Value *lval,
                                 const llvm::Value *rval
                                 )
            {
                typedef typename PointsToSets<ANDERSEN>::Type::PointsToSet
                        PointsToSet;
                PointsToSet& L = S[lval];
                std::size_t const old_size = L.size();
                L.insert(rval);
                return old_size != L.size();
            }
        };
        using std::tr1::bind;
        using std::tr1::placeholders::_1;
        return bind(&local::function,_1,
                    E.getArgument1().getArgument(),
                    E.getArgument2().getArgument());
    }

    template<typename Language>
    typename RuleFunction<Language,ANDERSEN>::Type
    getRuleFunction(ASSIGNMENT<
                        VARIABLE<const llvm::Value *>,
                        NULLPTR<const llvm::Value *>
                        > const& E,
                    ANDERSEN)
    {
        struct local
        {
            static bool function(typename PointsToSets<ANDERSEN>::Type& S,
                                 const llvm::Value *lval,
                                 const llvm::Value *rval
                                 )
            {
                typedef typename PointsToSets<ANDERSEN>::Type::PointsToSet
                        PointsToSet;
                PointsToSet& L = S[lval];
                std::size_t const old_size = L.size();
                L.insert(rval);
                return old_size != L.size();
            }
        };
        using std::tr1::bind;
        using std::tr1::placeholders::_1;
        return bind(&local::function,_1,
                    E.getArgument1().getArgument(),
                    E.getArgument2().getArgument());
    }

    template<typename Language>
    typename RuleFunction<Language,ANDERSEN>::Type
    getRuleFunction(ASSIGNMENT<
                        DEREFERENCE<
                            VARIABLE<const llvm::Value *> >,
                        NULLPTR<const llvm::Value *>
                        > const& E,
                    ANDERSEN)
    {
        struct local
        {
            static bool function(typename PointsToSets<ANDERSEN>::Type& S,
                                 const llvm::Value *lval,
                                 const llvm::Value *rval
                                 )
            {
                typedef typename PointsToSets<ANDERSEN>::Type::PointsToSet
                        PointsToSet;
                PointsToSet& L = S[lval];
                bool change = false;
                for (typename PointsToSet::const_iterator i = L.begin(); i!=L.end(); ++i)
                {
                    PointsToSet& X = S[*i];
                    std::size_t const old_size = X.size();
                    L.insert(rval);
                    change = change || X.size() != old_size;
                }
                return change;
            }
        };
        using std::tr1::bind;
        using std::tr1::placeholders::_1;
        return bind(&local::function,_1,
                    E.getArgument1().getArgument().getArgument(),
                    E.getArgument2().getArgument());
    }

}}

#endif
