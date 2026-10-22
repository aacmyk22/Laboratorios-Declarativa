% Derivada de una constante
d(Var, Func, 0) :-
    atomic(Var), number(Func).

% Derivada de una variable con respecto a si misma
d(Var, Func, 1) :-
    Var = Func.

% Derivada de una variable por una constante
d(Var, N*Var, N) :-
    atomic(Var), number(N).

% Derivada de una variable elevada a la N
d(Var, Var^N, N*Var^Nm1) :-
    number(N), is(Nm1, N - 1).

% Derivada de una variable elevada a la N por una constante
d(Var, K*Var^N, C*Var^Nm1) :-
    atomic(Var), number(K), number(N), is(C, K*N), is(Nm1, N - 1).

% Derivada de un logaritmo natural
d(Var, log(Var), 1/Var) :-
    atomic(Var).

% Integral de una constante
s(Var, K, K*Var) :-
    number(K), atomic(Var).

% Integral de una variable con respecto a si misma
s(Var, Var, 1/2*Var^2) :-
    atomic(Var).

% Integral de una constante por una variable elevada a la N
s(Var, K*Var^N, K/M*Var^M) :-
    atomic(Var), number(K), number(N), is(M, N + 1).

% --- SUMAS ALGEBRAICAS ---
% Sumar dos terminos con exponente N (Ej: 7*x^3 + 3*x^3)
suma(Var, K1*Var^N + K2*Var^N, R*Var^N) :- number(K1), number(K2), is(R, K1 + K2).
% Sumar cuando el primer termino no tiene coeficiente (Ej: x^2 + 5*x^2)
suma(Var, Var^N + K2*Var^N, R*Var^N) :- number(K2), is(R, 1 + K2).
suma(Var, K1*Var^N + Var^N, R*Var^N) :- number(K1), is(R, K1 + 1).

% Sumar dos terminos de grado 1 (Ej: 4*x + 2*x)
suma(Var, K1*Var + K2*Var, R*Var) :- number(K1), number(K2), is(R, K1 + K2).
suma(Var, Var + K2*Var, R*Var) :- number(K2), is(R, 1 + K2).
suma(Var, K1*Var + Var, R*Var) :- number(K1), is(R, K1 + 1).

% --- RESTAS ALGEBRAICAS ---
% Restar dos terminos con exponente N (Ej: 8*x^2 - 5*x^2)
resta(Var, K1*Var^N - K2*Var^N, R*Var^N) :- number(K1), number(K2), is(R, K1 - K2).
% Restar cuando el primer termino no tiene coeficiente
resta(Var, Var^N - K2*Var^N, R*Var^N) :- number(K2), is(R, 1 - K2).
resta(Var, K1*Var^N - Var^N, R*Var^N) :- number(K1), is(R, K1 - 1).

% Restar dos terminos de grado 1
resta(Var, K1*Var - K2*Var, R*Var) :- number(K1), number(K2), is(R, K1 - K2).
resta(Var, Var - K2*Var, R*Var) :- number(K2), is(R, 1 - K2).
resta(Var, K1*Var - Var, R*Var) :- number(K1), is(R, K1 - 1).