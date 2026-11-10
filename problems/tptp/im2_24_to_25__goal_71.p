
% The LADR formulas contain function or predicate symbols
% that are not legal TPTP symbols, and we have replaced those
% symbols with new symbols.  Here is the list of the unaccepted
% symbols and the corresponding replacements.
%
%   (arity 0)        1    e
%   (arity 2)        \    ld
%   (arity 2)        K    k
%   (arity 2)        *    m
%   (arity 3)        R    r
%   (arity 3)        L    l
%   (arity 2)        T    t
%   (arity 2)        /    rd

cnf(sos,axiom,m(e,A) = A).
cnf(sos,axiom,m(A,e) = A).
cnf(sos,axiom,ld(A,m(A,B)) = B).
cnf(sos,axiom,m(A,ld(A,B)) = B).
cnf(sos,axiom,rd(m(A,B),B) = A).
cnf(sos,axiom,m(rd(A,B),B) = A).
cnf(sos,axiom,a(A,B,C) = ld(m(A,m(B,C)),m(m(A,B),C))).
cnf(sos,axiom,k(A,B) = ld(m(B,A),m(A,B))).
cnf(sos,axiom,l(A,B,C) = ld(m(C,B),m(C,m(B,A)))).
cnf(sos,axiom,r(A,B,C) = rd(m(m(A,B),C),m(B,C))).
cnf(sos,axiom,t(A,B) = ld(B,m(A,B))).
cnf(sos,axiom,t(t(A,B),C) = t(t(A,C),B)).
cnf(sos,axiom,l(t(A,B),C,D) = t(l(A,C,D),B)).
cnf(sos,axiom,r(t(A,B),C,D) = t(r(A,C,D),B)).
cnf(sos,axiom,r(l(A,B,C),D,E) = l(r(A,D,E),B,C)).
cnf(sos,axiom,l(l(A,B,C),D,E) = l(l(A,D,E),B,C)).
cnf(sos,axiom,r(r(A,B,C),D,E) = r(r(A,D,E),B,C)).
cnf(sos,axiom,t(t(A,B),B) = A).
cnf(sos,axiom,l(l(A,B,C),B,C) = A).
cnf(sos,axiom,r(r(A,B,C),B,C) = A).
cnf(sos,axiom,a(a(a(A,B,C),D,E),F,V6) = e).
fof(goals,conjecture,! [X0] : ! [X1] : ld(m(X0,k(ld(X1,e),X1)),m(m(X0,ld(X1,e)),X1)) = a(X0,ld(X1,e),X1)).
