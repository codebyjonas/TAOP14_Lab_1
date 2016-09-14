param AntalTimmar;

set	R�VARA;
set	BURK;

param	BurkKostnad{BURK};
param	Inneh�ll{BURK};
param	BurkTimme{BURK};
param	Tillg�ng{R�VARA};
param	FPris{R�VARA, BURK};


# Skriv in variabler h�r
var x{R�VARA, BURK} >= 0; 


# Skriv in m�lfunktion h�r
maximize z:  sum{i in R�VARA, k in BURK} (FPris[i,k] - BurkKostnad[k]) * x[i,k]; 


# Skriv in bivillkor h�r
subject to 	MaxAntalBurkar{k in BURK} : sum{i in R�VARA} x[i,k] <= 40 * BurkTimme[k]; 
		MaxTillg�ng{i in R�VARA} : sum{k in BURK} x[i,k] * Inneh�ll[k] <= Tillg�ng[i]; 

