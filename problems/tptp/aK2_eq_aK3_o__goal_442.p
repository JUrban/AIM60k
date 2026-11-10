
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
cnf(sos,axiom,m(m(m(A,A),B),C) = m(m(A,A),m(B,C))).
cnf(sos,axiom,m(m(A,m(B,B)),C) = m(A,m(m(B,B),C))).
cnf(sos,axiom,m(m(A,B),m(C,C)) = m(A,m(B,m(C,C)))).
fof(goals,conjecture,! [X0] : ! [X1] : ! [X2] : m(m(X0,X1),k(ld(X2,e),X2)) = m(X0,m(X1,k(ld(X2,e),X2)))).
