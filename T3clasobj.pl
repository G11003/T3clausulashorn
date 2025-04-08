%HECHOS

% tipo de objeto
 es_objeto(martillo).
 es_objeto(silla).
 es_objeto(mesa).
 es_objeto(destornillador).
 es_objeto(cuchara).

 % materiales
 material(martillo, metal).
 material(destornillador, metal).
 material(cuchara, plastico).
 material(silla, madera).
 material(mesa, madera).

 % categorías
 tipo(martillo, herramienta).
 tipo(destornillador, herramienta).
 tipo(cuchara, utensilio).
 tipo(silla, mueble).
 tipo(mesa, mueble).


%REGLAS

% Un objeto es metálico si su material es metal
metalico(Objeto) :-
    material(Objeto, metal).

% Un objeto es de madera si su material es madera
madera(Objeto) :-
    material(Objeto, madera).

% Un objeto es herramienta si su tipo es herramienta
herramienta(Objeto) :-
    tipo(Objeto, herramienta).

% Un objeto es utilizable si es herramienta o utensilio
utilizable(Objeto) :-
    herramienta(Objeto). % Es utilizable si es herramienta
utilizable(Objeto) :-
    tipo(Objeto, utensilio). % Es utilizable si es utensilio