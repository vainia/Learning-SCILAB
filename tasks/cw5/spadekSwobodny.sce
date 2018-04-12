// model wektorowy spadku swobodnego (bez oporu powietrza)
function prawa_strona = F(t,Y)
    prawa_strona(1)= -Y(2)
    prawa_strona(2)=  g-0.5*Cx*d*S/m*Y(2)^2
endfunction

//g - przyspieszenie ziemskie
//Cx - wspólczynnik aerodynamiczny sily oporu
//ρ - gestosc powietrza
//v - predkosc ciaaa wzgledem powietrza
//S - powierzchnia rzutu ciala na plaszczyzne prostopadla do wektora predkosci ciala

m=100;
Cx=2.30;
S=2;
d=1.5^2;


// stałe fizyczne
//g = 9.81; // przyspieszenie ziemskie
g = 3.70; // przyspieszenie marsa

// Wartości początkowe
y0 = 100;  // wysokość początkowa
v0 = 0;    // prędkość początkowa

Y0=[y0;v0]; // początkowa wartość wektora stanu

// Wektor czasu
t0 = 0; //chwila początkowa
tk = 10; //chwila końcowa
t = linspace(t0,tk,100);

// Całkowanie równania ruchu
Y = ode(Y0,t0,t,F); // całkowanie fun. wekt.

// Składowe wektora stanu
y = Y(1,:); // położenie (wysokość)
v = Y(2,:); // prędkość spadania

// Wykresy
clf
// Wykres wysokości: y=y(t)
subplot(211)
plot2d(t,y,5)
xtitle('Ivan Napolskykh 15948','czas t [s]','wysokość y(t) [m]')
// Wykres prędkości: v=v(t)
subplot(212)
plot2d(t,v,2);
xtitle('Ivan Napolskykh 15948','czas t [s]','prędkość v(t) [m/s]')
