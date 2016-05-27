add35([],0).
add35([X|Xs],Y) :- 0 =:= X mod 3,add35(Xs,Z), Y is X + Z.
add35([X|Xs],Y) :- 0 =:= X mod 5,add35(Xs,Z), Y is X + Z.
add35([_|Xs],Y) :- add35(Xs,Y).
 
range(High,High,[High]).
range(Low,High,[Low|Acc]):- Low < High , L1 is Low + 1, range(L1,High,Acc).
 
euler1(X) :- range(1,999,Z),add35(Z,X).