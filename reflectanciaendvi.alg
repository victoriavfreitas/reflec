{

//VARIÁVEIS DECLARADAS PARA CONVERTER ND EM REFLECTANCIA:
Imagem BV ("LANDSAT8");
Imagem BIVP ("LANDSAT8");
Numerico B4reflecA ("Num");

Numerico B5reflecA ("Num");

Numerico ReflecnvdiA ("ndviNum");

// instanciações de variáveis:
BV = Recupere (Nome = "B4");
BIVP = Recupere (Nome = "B5");
RMB4 = 0.00002;
RAB4 = -0.100000;
RMB5 = 0.00002;
RAB5 = -0.100000;
senose = 0.99984769;

//operações:
B4reflecA = Novo (Nome = "B4_reflec_a", ResX=30, ResY=30, Escala=100000);
B5reflecA = New (Nome = "B5_reflec_a", ResX=30, ResY=30, Escala=100000);

ReflecndviA = New ( Nome = "ndvi_reflec_a" , ResX=30, ResY=30, Escala=100000, Min=1, Max=1);

//conversão de ND para reflec TOA:
B4reflecA = Numerico
(((RMB4 * BV)+(RAB4))/(senose));
B5reflecA = Numerico
(((RMB5 * BIVP)+(RAB5)/(senose))

//calculo final do ndvi com reflec:
ReflecndviA = ((B5reflecA-B4reflecA)/(B5reflecA+B4reflecA));

}