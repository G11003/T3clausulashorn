% Hechos
 come(gato, raton).
 come(raton, queso).
 es_animal(gato).
 es_animal(raton).
 es_animal(queso). 
 % Solo como ejemplo, aunque queso no es animal

% Regla gato come queso?
come_cadena(X, Y) :-
    prohibido(X, Y) -> false ; % Si está prohibido, falla
    (come(X, Y); (come(X, Z), come_cadena(Z, Y))).

% Regla gato come raton y raton come queso
gato_come_raton_y_raton_come_queso :-
    come(gato, raton), % El gato come al ratón
    come(raton, queso). % El ratón come queso


% Relaciones prohibidas
prohibido(gato, queso).
