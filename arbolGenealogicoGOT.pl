% HECHOS DE LA CASA STARK

% Creamos la base de conocimiento de quienes son varones en la familia.
esVaron(richard). %Padre de la Casa Stark
esVaron(ned). % Hijo de Richard y Lyarra
esVaron(brandon). %Hijo de Richard y Lyarra
esVaron(benjen). %Hijo Richard y Lyarra
esVaron(rob). %Hijo de Ned y Catelyn
esVaron(bran). %Hijo de Ned y Catelyn
esVaron(rickon). %Hijo de Ned y Catelyn
esVaron(jon).

% Base de conocimiento de las mujeres de la familia.
esMujer(lyarra). %Madre de la casa Stark
esMujer(catelyn). %Esposa de Ned
esMujer(sansa). %Hija de Ned y Catelyn
esMujer(arya). %Hija de Ned y Catelyn
esMujer(lyanna). %Hija de Richard y Lyarra

% Base de conocimiento de los matrimonios de la familia.
esConyugueDe(richard, lyarra).
esConyugueDe(ned, catelyn).

%Base de Conocimiento de los Padres de la familia.
esPadreDe(richard, ned).
esPadreDe(rihard, brandon).
esPadreDe(richard, benjen).
esPadreDe(richard, lyanna).
esPadreDe(ned, rob).
esPadreDe(ned, bran).
esPadreDe(ned, rickon).
esPadreDe(ned, arya).
esPadreDe(ned, sansa).

%Base de conocimiento de las Madres de la familia
esMadreDe(lyanna, jon). %lyanna tiene un hijo sin estar casada
esMadreDe(catelyn, rob).
esMadreDe(catelyn, arya).
esMadreDe(catelyn, sansa).
esMadreDe(catelyn, bran).
esMadreDe(catelyn, rickon).
esMadreDe(lyarra, ned).
esMadreDe(lyarra, brandon).
esMadreDe(lyarra, benjen).
esMadreDe(lyarra, lyanna).




% HECHOS DE LA CASA TARGARYEN

% Declaramos la base de conocimiento de los varones de la familia.
esVaron(jaehaerys).% Padre de la casa Targaryen
esVaron(aerysII). % Hijo de jaehaerys
esVaron(rhaegar). % Hijo de AerysII y Rhaella
esVaron(viserys).%Hijo de AerysII y Rhaella
esVaron(jon). %Hijo de Rhaegar y Lyanna Stark
esVaron(aegon). %Hijo de Rhaegar y Elia Martell
esVaron(khalDrogo). %esposo de daenerys

% Declaramos la base de conocimiento de las mujeres de la familia.
esMujer(shaera). %Madre de la casa Targaryen
esMujer(rhaella). % Esposa de AerysII
esMujer(eliaMartell). %Esposa de Rhaegar
esMujer(daenerys). %Hija de AerysII y Rhaella
esMujer(rhaenys). %Hija de Rhaegar y Elia Martell

%Base de conocimiento de los dragones
esDragon(rhaegal).
esDragon(viserion).
esDragon(drogon).

% Base de conocimiento de los matrimonios de la familia.
esConyugueDe(jaehaerys, shaera).
esConyugueDe(aerysII, rhaella).
esConyugueDe(rhaegar, eliaMartell).
esConyugueDe(khalDrogo, daenerys).

%Base de conocimiento de los padres
esPadreDe(jaehaerys, aerysII).
esPadreDe(aerysII, rhaegar).
esPadreDe(aerysII, viserys).
esPadreDe(aerysII, daenerys).
esPadreDe(rhaegar, jon).
esPadreDe(rhaegar, aegon).
esPadreDe(rhaegar, rhaenys).

%Base de conocimiento de las madres
esMadreDe(shaera, aerysII).
esMadreDe(rhaella, viserys).
esMadreDe(rhaella, daenerys).
esMadreDe(rhaella, rhaegar).
esMadreDe(eliaMartell, aegon).
esMadreDe(eliaMartell, rhaenys).
esMadreDe(daenerys, viserion).
esMadreDe(daenerys, drogon).
esMadreDe(daenerys, rhaegal).




%HECHOS DE LA CASA LANNISTER

esVaron(tywin). %Padre de la Casa Lannister
esVaron(jaime). % Hijo de tywin y joanna
esVaron(tyrion). %Hijo de tywin y joanna
esVaron(joffrey). %Hijo jaime y cersei
esVaron(tommen). %Hijo de jaime y cersei
esVaron(baratheon). % Esposo de cersei

% Base de conocimiento de las mujeres de la familia.
esMujer(joanna). %Madre de la casa Lannister
esMujer(cersei). %Hija de tywin y joanna
esMujer(myrcella). %Hija jaime y cersei

% Base de conocimiento de los matrimonios de la familia.
esConyugueDe(tywin, joanna).
esConyugueDe(baratheon, cersei).

%Base de Conocimiento de los Padres de la familia.
esPadreDe(tywin, jaime).
esPadreDe(tywin, tyrion).
esPadreDe(tywin, cersei).
esPadreDe(jaime, tommen).
esPadreDe(jaime, joffrey).
esPadreDe(jaime, myrcella).

%Base de conocimiento de las Madres de la familia
esMadreDe(joanna, jaime).
esMadreDe(joanna, cersei).
esMadreDe(joanna, tyrion).
esMadreDe(cersei, tommen).
esMadreDe(cersei, joffrey).
esMadreDe(cersei, myrcella).




%REGLAS PARA TODAS LAS FAMILIAS

% Abuelos de la Familia: Para decir que alguien es abuelo/a, decimos que
% ese abuelo/a es padre o madre de algun hijo/a, y a su vez este hijo/a
% es padre de otro hijo/a.
esAbueloDe(Abuelo, Nietx):- esPadreDe(Abuelo, Padre), esPadreDe(Padre,Nietx), esVaron(Abuelo).
esAbueloDe(Abuelo, Nietx):- esPadreDe(Abuelo, Madre), esMadreDe(Madre, Nietx), esVaron(Abuelo).
esAbuelaDe(Abuela, Nietx):- esMadreDe(Abuela, Padre), esPadreDe(Padre,Nietx), esMujer(Abuela).
esAbuelaDe(Abuela, Nietx):- esMadreDe(Abuela, Madre), esMadreDe(Madre, Nietx), esMujer(Abuela).


%Hijos/as
esHijoDe(Hijo, PadreMadre):- (esMadreDe(PadreMadre, Hijo) ; esPadreDe(PadreMadre, Hijo)), esVaron(Hijo).
esHijaDe(Hija, PadreMadre):- (esMadreDe(PadreMadre, Hija) ; esPadreDe(PadreMadre, Hija)), esMujer(Hija).
esHijoDeMatrimonio(Padre, Madre, Hijo):- esPadreDe(Padre, Hijo), esMadreDe(Madre, Hijo), esConyugueDe(Padre, Madre), esVaron(Hijo).
esHijaDeMatrimonio(Padre, Madre, Hija):- esPadreDe(Padre, Hija), esMadreDe(Madre, Hija), esConyugueDe(Padre, Madre), esMujer(Hija).


% Hermanastros: Son hemanastros cuando el padre o la madre
% son el mismo pero no ambos. Entonces, Cuando un cierto Padre es padre
% del hermano1 y a su vez ese mismo Padre es padre del hermano2,
% entonces son hermanastros. La misma logica se usa para decir que son
% hijos/as de la misma madre.
sonHermanastros(Hermano1, Hermano2):- (esPadreDe(Padre, Hermano1), esPadreDe(Padre, Hermano2)) ; (esMadreDe(Madre, Hermano1), esMadreDe(Madre, Hermano2)).


% Hermanos: Son hermanos cuando son hijos del mismo Padre
% y de la misma Madre. Entonces, Existe un cierto Padre que es padre del
% hermano1 y tambien ese mismo Padre es padre del hermano2, pero a su
% vez existe una Madre que es madre del hermano1 y tambien es madre del
% hermano2.
sonHermanos(Hermano1, Hermano2):- esPadreDe(Padre,Hermano1), esPadreDe(Padre, Hermano2), esMadreDe(Madre, Hermano2), esMadreDe(Madre, Hermano1).


% Tios: Una persona es tio/a cuando este tio/a tiene un hermano/a, y ese
% hermano/a es Padre o Madre un hijo/a.
esTioDe(Tio, Sobrinx):- (sonHermanos(Padre, Tio), esPadreDe(Padre, Sobrinx)) ; (sonHermanos(Madre, Tio), esMadreDe(Madre, Sobrinx)), esVaron(Tio).
esTiaDe(Tia, Sobrinx):- (sonHermanos(Padre, Tia), esPadreDe(Padre, Sobrinx)) ; (sonHermanos(Madre, Tia), esMadreDe(Madre, Sobrinx)), esMujer(Tia).


% BisAbuelo: Cuando un BisAbuelo/a es padre o madre de un Abuelo/a, y
% este abuelo/a es abuelo/a de un nieto/a.
esBisAbueloDe(BisAbuelo, BisNietx) :- esPadreDe(BisAbuelo, Abuelo), esAbueloDe(Abuelo,BisNietx), esVaron(BisAbuelo).
esBisAbueloDe(BisAbuelo, BisNietx) :- esPadreDe(BisAbuelo, Abuela), esAbuelaDe(Abuela,BisNietx), esVaron(BisAbuelo).
esBisAbuelaDe(BisAbuela, BisNietx) :- esMadreDe(BisAbuela, Abuela), esAbuelaDe(Abuela,BisNietx), esMujer(BisAbuela).
esBisAbuelaDe(BisAbuela, BisNietx) :- esMadreDe(BisAbuela, Abuelo), esAbueloDe(Abuelo,BisNietx), esMujer(BisAbuela).


% PrimoHermanos: Cuando Dos padre/madre son hermanos/as, y el primo/a1
% es hijo/a de uno de esos padre/madre y el primo/a2 es hijo/a del
% hermano/a del padre/madre del primo/a1
sonPrimoHermanos(Primx1, Primx2):- sonHermanos(PadreMadre1, PadreMadre2), (esHijoDe(Primx1, PadreMadre1), esHijoDe(Primx2,PadreMadre2 )) ; (esHijaDe(Primx1, PadreMadre1), esHijaDe(Primx2, PadreMadre2)) ; (esHijoDe(Primx1,PadreMadre1), esHijaDe(Primx2, PadreMadre2)) ; (esHijaDe(Primx1, PadreMadre1), esHijoDe(Primx2, PadreMadre2)).


% Cuniados: Son cuniados cuando el cuniado/a1 es conyugue de algun
% Esposo/a y a su vez este esposo/a es hermano del cuniado/a2.
sonCuniados(Cuniado1, Cuniado2):- esConyugueDe(Esposo, Cuniado1) , sonHermanos(Cuniado2, Esposo).
sonCuniados(Cuniado1, Cuniado2):- esConyugueDe(Esposo, Cuniado2) , sonHermanos(Cuniado1, Esposo).
sonCuniados(Cuniado1, Cuniado2):- esConyugueDe(Cuniado1, Esposa) , sonHermanos(Cuniado2, Esposa).
sonCuniados(Cuniado1, Cuniado2):- esConyugueDe(Cuniado2, Esposa) , sonHermanos(Cuniado1, Esposa).

% Suegro: Cuando el Yerno/Nuera es conyugue de un cierto esposo/a, y
% cuando el suegro/a es padre/madre de ese esposo/a.
esSuegroDe(Suegro, Yerno):- esConyugueDe(Yerno, Esposa), esPadreDe(Suegro, Esposa), esVaron(Suegro), esVaron(Yerno).
esSuegroDe(Suegro, Nuera):- esConyugueDe(Esposo, Nuera), esPadreDe(Suegro, Esposo), esVaron(Suegro), esMujer(Nuera).
esSuegraDe(Suegra, Yerno):- esConyugueDe(Yerno, Esposa), esMadreDe(Suegra,Esposa), esMujer(Suegra), esVaron(Yerno).
esSuegraDe(Suegra, Nuera):- esConyugueDe(Esposo, Nuera), esMadreDe(Suegra,Esposo), esMujer(Suegra), esMujer(Nuera).

































