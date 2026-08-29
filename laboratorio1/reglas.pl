
:- consult('hechos.pl').

% Regla 1

superviviente_adulto_equipado(P, Item) :-
    rol(P, protagonista),
    edad(P, E),
    E >= 18,
    tiene(P, Item).

% Regla 2

zona_peligrosa(Zona) :-
    peligro(Zona, alto) ;
    Zona = superficie,
    peligro_superficie(noche, alto).

% Regla 3
puede_actuar_como_aliado(P) :-
    rol(P, aliado) ;
    puede_ser_aliada(P). 

