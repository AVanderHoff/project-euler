primeFactorsOddsOnly(_,_,Hold,Hold,[]).
primeFactorsOddsOnly(Div,DivA,Hold,End,[Div|Acc]):- ( 0 is End mod Div , 0 is End mod DivA ), DivAN is DivA * Div, HoldN is Hold * Div, primeFactorsOddsOnly(Div,DivAN,HoldN,End,Acc).
primeFactorsOddsOnly(Div,_,Hold,End,Acc):- DivN is Div + 2 , primeFactorsOddsOnly(DivN,DivN,Hold,End,Acc).
 
 
euler3(X):- primeFactorsOddsOnly(3,3,1,600851475143,Y) , last(Y,X).