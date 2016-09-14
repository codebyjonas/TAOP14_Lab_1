param AntalTimmar;

set	RÅVARA;
set	BURK;

param	BurkKostnad{BURK};
param	Innehåll{BURK};
param	BurkTimme{BURK};
param	Tillgång{RÅVARA};
param	FPris{RÅVARA, BURK};


# Skriv in variabler här
var x{RÅVARA, BURK} >= 0; 


# Skriv in målfunktion här
maximize z:  sum{i in RÅVARA, k in BURK} (FPris[i,k] - BurkKostnad[k]) * x[i,k]; 


# Skriv in bivillkor här
subject to 	MaxAntalBurkar{k in BURK} : sum{i in RÅVARA} x[i,k] <= 40 * BurkTimme[k]; 
		MaxTillgång{i in RÅVARA} : sum{k in BURK} x[i,k] * Innehåll[k] <= Tillgång[i]; 

