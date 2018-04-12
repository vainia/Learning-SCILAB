function [x0,f0,iter]=dfp(x0,maxiter)
clf  
exec('cel.sci');
exec('mapa.sci',0);
[f0,df0]=cel(x0);
iter=0;
kryt=norm(df0);
g=df0;
D=eye(2,2);
  dd=g*D';
  t=1;
  x1=x0-t*dd;
  [f1,df1]=cel(x1);
  iter=iter+1;
  while f1 > f0 
    t=0.25*t;
    x1=x0-t*dd;
    [f1,df1]=cel(x1);
    iter=iter+1;
  end
  xsegs([x0(1);x1(1)],[x0(2);x1(2)]);
  d=x1-x0;
  y=df1-df0;
  df0=df1;
  x0=x1;
  f0=f1;
  kryt=norm(df1);
while kryt > 0.001 & iter < maxiter
  z=y*D';
  if abs(d*y')<0.00001 | abs(y*z')<0.00001 then
    D=eye(2,2);
  else  
    a=1.0/(d*y');
    b=-1.0/(y*z');
    D=D+a*(d'*d)+b*(z'*z);
  end  
  g=df0;
  dd=g*D';
  t=1;
  x1=x0-t*dd;
  [f1,df1]=cel(x1);
  iter=iter+1;
  while f1 > f0
    t=0.25*t;
    x1=x0-t*dd;
    [f1,df1]=cel(x1);
    iter=iter+1;  
  end
  xsegs([x0(1);x1(1)],[x0(2);x1(2)]);
  d=x1-x0;
  y=df1-df0;  
  x0=x1;
  f0=f1;
  df0=df1;
  kryt=norm(df1);
end
endfunction
