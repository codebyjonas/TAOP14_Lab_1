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



# Skriv in m�lfunktion h�r



# Skriv in bivillkor h�r

