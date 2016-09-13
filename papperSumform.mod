set LAGER;
set KUNDER;

param c{LAGER,KUNDER};
param s{LAGER};
param d{KUNDER};

var x{LAGER,KUNDER} >= 0; 
          
minimize z: sum{i in LAGER, k in KUNDER} c[i,k]*x[i,k];

subject to  Tillgangsvillkor{i in LAGER}   : sum{k in KUNDER} x[i,k] <= s[i];
            Efterfrågevillkor{k in KUNDER} : sum{i in LAGER}  x[i,k]  = d[k];

