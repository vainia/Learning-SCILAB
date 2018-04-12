xx0=-1:0.1:1;
yy0=xx0;
xx=ones(21,1)*xx0;
yy=yy0'*ones(1,21);
//ff=(0.25-xx.*xx-yy.*yy).*(0.25-xx.*xx-yy.*yy)+0.1*xx;
//ff=3*xx.*xx+yy.*yy;
ff=3*(yy-xx.*xx).*(yy-xx.*xx) +0.1*(xx.*xx);
clf
contour2d(xx0,yy0,ff',[0.01,0.05,0.25,0.5,1,2,3,4]);
xtitle('IVAN NAPOLSKYKH 15948')


