euler2H(A,_,0):- A > 4000000.
euler2H(A,B,Y):- C is B*4 + A , euler2H(B,C,Z), Y is A + Z.
 
euler2(X):- euler2H(2,8,X).