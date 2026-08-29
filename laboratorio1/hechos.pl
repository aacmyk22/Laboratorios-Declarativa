% Personajes y roles
personaje(eric).
personaje(timmy).
personaje(kelvin).
personaje(virginia).

rol(eric, protagonista).
rol(kelvin, aliado).
rol(virginia, mutante).

edad(eric, 30).

estado(kelvin, capturado).
habla(kelvin, no).
puede_ser_aliada(virginia).

% Inventarios y habilidades
tiene(eric, hacha).
tiene(eric, encendedor).

habilidad(kelvin, cargar_troncos).
habilidad(kelvin, construir).

% Zonas y peligro
zona(superficie).
zona(cuevas).
zona(bunkeres).

peligro(cuevas, alto).
peligro_superficie(dia, medio).
peligro_superficie(noche, alto).

requiere_llave(bunkeres).
sin_enemigos(bunkeres).

% Enemigos y ubicación
enemigo(canibales).
enemigo(mutantes).

aparece_en(canibales, superficie).
aparece_en(mutantes, superficie).
aparece_en(mutantes, cuevas).

% Necesidades y materiales
necesita(eric, refugio).
necesita(eric, comida).
necesita(eric, agua).

material(troncos).
material(piedras).

se_encuentra_en(troncos, superficie).
se_encuentra_en(piedras, superficie).