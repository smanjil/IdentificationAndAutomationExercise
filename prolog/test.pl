parent(jose,joao).
gender(jose,male).
father(X,Y):-parent(X,Y),gender(X,male).
