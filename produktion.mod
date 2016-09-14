#-----------------------------------------------------------------------------
# Modellfil till Kl�dproduktion
#-----------------------------------------------------------------------------

param T;
param MaxLager;
param Garanti;

set PLAGG ordered;
set RESURS;

param Lagerplats{PLAGG};
param InitLager{PLAGG};

param Kostnad{PLAGG,1..T};
param Tillgang{RESURS,1..T};
param Efterfragan{PLAGG,1..T};
param Atgang{PLAGG,RESURS};


# Skriv in variabler h�r
var x{PLAGG, 1..T} >= 0;
var l{PLAGG, 0..T} >= 0;


# Skriv in m�lfunktion h�r

minimize z : sum{ i in PLAGG, t in 1..T} x[i,t] * Kostnad[i,t];


# Skriv in bivillkor h�r

subject to 	�tg�ng{r in RESURS, t in 1..T} : sum{i in PLAGG} x[i,t] * Atgang[i,r] <= Tillgang[r,t];
		Lagerbalans{i in PLAGG, t in 1..T} :  l[i,t-1] + x[i,t] - Efterfragan[i,t] = l[i,t];
		Initlager{i in PLAGG} : l[i,0] = InitLager[i];
		GarantiLager : sum{i in PLAGG} l[i,T] >= Garanti;
		LagerBalans{t in 1..T} : sum{i in PLAGG} Lagerplats[i] * l[i,t] <= MaxLager;
		
