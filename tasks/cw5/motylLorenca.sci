a=20;
c=8/3;
//b=30;
//b=99.96;
b=28;

Y0=10*(-8)*[1;1;1];

t0=0;
yk=50;
t=linspace(t0,tk,5000);
function pochodnaY = f(t,Y)
    pochodnaY(1)=a*(Y(2)-Y(1));
    pochodnaY(2)=Y(1)*(b-Y(3))-Y(2);
    pochodnaY(3)=Y(1)*Y(2)-c*Y(3);
endfunction

Y=ode(Y0,t0,t,f);

clf

comet3d(Y(1,:),Y(2,:),Y(3,:))
//plot([Y(1,:)',Y(2,:)',Y(3,:)'])

xtitle('Ivan Napolskykh 15948')
