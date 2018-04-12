function [x0,f0,iter]=naive(x0,maxiter,krok)
 
exec('cel.sci');
clf 
exec('mapa.sci',0);

[f0,df0]=cel(x0);
iter=0;
kryt=norm(df0);
g=df0;

while(kryt>0.0001)&(iter<maxiter) do
 x1=x0-krok*g;
 [f1,df1]=cel(x1);
 iter=iter+1;
 xsegs([x0(1);x1(1)]',[x0(2);x1(2)]');
 x0=x1;
 f0=f1;
 kryt=norm(df1);
 g=df1;
end
endfunction
