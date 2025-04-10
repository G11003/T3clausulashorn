%Garcia Cruz Andres
%Espinosa Antelis Gabriela Dycheke

%Ejercicio 1
% Hechos
humano(socrates).
humano(platon).
mortal(humano).
humano(X).

% Regla para determinar si algo es mortal
mortal(X):- humano(X).

%Regla para mujeres cientificas
cientifica(X) :- false.

%Regla para pensadores
pensador(X) :- false.

%Regla para "Socrates es sabio"
sabio(socrates):-false.

%Regla para humanos antiguos
humano_antiguo(x):-false.

%Regla para quien ama a maria
ama(juan,maria).

%Regla para "Quienes son pensadores(filosofos o cientificos)?"

es_pensador_f_c(X) :- false.

% Regla para que filósofo sea igual a Platón usando unificación
igual_a(platon, Y) :- humano(Y), mortal(Y), Y = socrates.

%Ejercio2
hanoi(N) :- 
    mover(N, poste1, poste3, poste2).

% Caso base - nohay discos que mover
mover(0, _, _, _) :- !.

% Caso recursivo
mover(N, A, B, C) :-
    N > 0,
    M is N - 1,
    mover(M, A, C, B),    % Mover N-1 discos de A a C usando B como auxiliar
    escribir_mov(A, B),   % Escribir el movimiento actual
    mover(M, C, B, A).    % Mover N-1 discos de C a B usando A como auxiliar

% Predicado para mostrar los movimientos
escribir_mov(Desde, Hasta) :-
    write('mover desde: '), write(Desde),
    write(' hasta: '), write(Hasta), nl.