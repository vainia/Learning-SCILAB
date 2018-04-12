clf
for k=1:100
    x(k)=k
    e111(k)=calkujPL(f1,k*100)
    e121(k)=11/28
    e112(k)=calkujPL(f2,k*100)
    e122(k)=erf(1)
    e211(k)=calkujPP(f1,k*100)
    e221(k)=11/28
    e212(k)=calkujPP(f2,k*100)
    e222(k)=erf(1)
    e311(k)=calkujT(f1,k*100)
    e321(k)=11/28
    e312(k)=calkujT(f2,k*100)
    e322(k)=erf(1)
    e411(k)=calkujMC(f1,k*100)
    e421(k)=11/28
    e412(k)=calkujMC(f2,k*100)
    e422(k)=erf(1)
end

err11=abs(e121-e111)
err12=abs(e122-e112)
err21=abs(e221-e211)
err22=abs(e222-e212)
err31=abs(e321-e311)
err32=abs(e322-e312)
err41=abs(e421-e411)
err42=abs(e422-e412)

X=log(x)
Y11=log(err11)
Y12=log(err12)
Y21=log(err21)
Y22=log(err22)
Y31=log(err31)
Y32=log(err32)
Y41=log(err41)
Y42=log(err42)

[a11,b11]= methodOfLeastSquares(X,Y11)
[a12,b12]= methodOfLeastSquares(X,Y12)
[a21,b21]= methodOfLeastSquares(X,Y21)
[a22,b22]= methodOfLeastSquares(X,Y22)
[a31,b31]= methodOfLeastSquares(X,Y31)
[a32,b32]= methodOfLeastSquares(X,Y32)
[a41,b41]= methodOfLeastSquares(X,Y41)
[a42,b42]= methodOfLeastSquares(X,Y42)

clf
plot(X,Y11,'.red')
plot(X,Y12,'.blue')
plot(X,Y21,'.green') //under red
plot(X,Y22,'.m') //under blue
plot(X,Y31,'.yellow')
plot(X,Y32,'.p')
plot(X,Y41,'.o')
plot(X,Y42,'.black')

plot(X,a11*X+b11)
plot(X,a12*X+b12)
plot(X,a21*X+b21)
plot(X,a22*X+b22)
plot(X,a31*X+b31)
plot(X,a32*X+b32)
plot(X,a41*X+b41)
plot(X,a42*X+b42)
xtitle("Ivan Napolskykh",'log(x)','Y')
