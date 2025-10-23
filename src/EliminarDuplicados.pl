% Predicado principal que llama al auxiliar con acumulador
eliminar_duplicados(Lista, Resultado) :-
    eliminar_duplicados(Lista, [], Resultado).

% Caso base: cuando la lista original está vacía
eliminar_duplicados([], Acumulador, Resultado) :-
    reverse(Acumulador, Resultado).

% Caso recursivo
eliminar_duplicados([Cabeza|Cola], Vistos, Resultado) :-
    (   member(Cabeza, Vistos)
    ->  % Si ya vimos el elemento, no lo añadimos
        eliminar_duplicados(Cola, Vistos, Resultado)
    ;   % Si es nuevo, lo añadimos a la lista de vistos
        eliminar_duplicados(Cola, [Cabeza|Vistos], Resultado)
    ).
