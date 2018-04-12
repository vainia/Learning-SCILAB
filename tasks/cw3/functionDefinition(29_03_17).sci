//Przykladowe funkcje do scalkowania
// 1. Calkowanie w przedziale [0,1].
deff('y=f1(x)','y=x.^3+x.^6');
//dokladny wynik:
C1 = 11/28

// 2. Calkowanie w przedziale [0,1].
deff('y=f2(x)', 'y=2/sqrt(%pi)*exp(-x^2)')
// dokladny wynik: 
C2 = erf(1)
