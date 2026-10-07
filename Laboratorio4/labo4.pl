% Caso base Si el número es de un solo dígito menor a 10 la lista contiene solo ese dígito.
almacenar(N, [N]) :- 
    N < 10.

% Caso recursivo Si el número tiene más de un dígito.
almacenar(N, [UltimoDigito | RestoLista]) :- 
    N >= 10,
    UltimoDigito is N mod 10,     
    RestoNumero is N // 10,         
    almacenar(RestoNumero, RestoLista). 
