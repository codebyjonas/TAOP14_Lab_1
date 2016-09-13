var x11 >= 0; 
var x12 >= 0; 
var x13 >= 0;
var x21 >= 0; 
var x22 >= 0; 
var x23 >= 0;
          
minimize z: 6*x11 + 7*x12 + 8*x13 + 5*x21 + 8*x22 + 6*x23;

subject to  Tillgangsvillkor1 : x11 + x12 + x13 <= 110;
            Tillgångsvillkor2 : x21 + x22 + x23 <= 120;
            Efterfrågevillkor1 : x11 + x21 = 80;
            Efterfrågevillkor2 : x12 + x22 = 70;
            Efterfrågevillkor3 : x13 + x23 = 60;
