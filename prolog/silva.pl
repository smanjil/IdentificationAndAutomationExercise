
parent(jose,joao).
parent(maria,joao).
parent(jose,ana).
parent(maria,ana).
parent(ana,helena).
parent(ana,joana).
parent(joao,mario).
parent(mario,carlos).
parent(helena,carlos).

gender(jose,male).
gender(maria,female).
gender(joao,male).
gender(ana,female).
gender(helena,female).
gender(joana,female).
gender(mario,male).
gender(carlos,male).

ancestor(X,Y):-parent(X,Y).
ancestor(X,Y):-parent(X,A),ancestor(A,Y).

mother(X,Y):-parent(X,Y),gender(X,female).
father(X,Y):-parent(X,Y),gender(X,male).
sister(X,Y):-parent(A,X),parent(A,Y),X\==Y,gender(X,female).
brother(X,Y):-parent(A,X),parent(A,Y),X\==Y,gender(X,male).
cousin(X,Y):-brother(A,B),parent(A,X),parent(B,Y),X\==Y.
cousin(X,Y):-sister(A,B),parent(A,X),parent(B,Y),X\==Y.
uncle(X,Y):-brother(X,A),parent(A,Y).
grandfather(X,Y):-parent(X,A),parent(A,Y),gender(X,male).
