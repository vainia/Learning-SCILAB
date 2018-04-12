//oznaczenia:
//y(1) <--> Zajace
//y(2) <--> Rysie

function [prawa_strona] = F(t,y)
    prawa_strona(1)= a*y(1)-b*y(1)*y(2)
    prawa_strona(2)= c*y(1)*y(2)-d*y(2)
endfunction


//Wartosci poczatkowe
Z0=100; //poczatkowa liczba zajacy
R0=10; //poczatkowa liczba rysi

//Parametry
a=0.1;
b=0.01;
c=0.002;
d=0.05;

//Czas
t0=0;
tk=300;
t=linspace(0,tk,300);

//Rozwiazanie
Y0=[Z0; R0];
Y=ode(Y0,t0,t,F);

//Wykresy
clf
subplot(211)
plot2d(t,[Y(1,:)'Y(2,:)'],style=[1,2]);
xtitle('Ivan Napolskykh 15948','czas t [s]','wysokość y(t) [m]')
