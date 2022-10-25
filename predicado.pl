saludo:-write('Ingresa tu nombre: '), read(N),
    write('Hola, como estas: '), write(N).

promedio:-write('Ingresa el primer numero'), read(A),
          write('Ingresa segundo numero'), read(B),
          write('Ingresa tercer numero'), read(C),
          write('El promedio es: '), Prom is (A+B+C)/3, write(Prom).

suma([],0).
suma([X|L],N):-
    suma(L,C),
    N is C + X.

cuadrado:- repeat,
           leeNumero(X),
           procesa(X),
           !.
leeNumero(X):-repeat,
              write('Ingresa el número para saber su cuadrado'),
               read(X),
               number(X),
               !.
procesa(0):-!.
procesa(X):- R is X*X,
writeln([X, '^2 = ',R]),
fail.
