clf
for k=1:1000
    x(k)=k
    pi1(k)=MojePi1(k)
    pi2(k)=MojePi2(k)
end

err1=abs/*modulo*/(pi1-%pi)
err2=abs(pi2-%pi)

X=log(x)
Y1=log(err1)
Y2=log(err2)

clf
plot(X,Y1,'.r')
plot(X,Y2,'.b')

[a1,b1]= methodOfLeastSquares(X,Y1)
[a2,b2] = methodOfLeastSquares(X,Y2)

plot(X,a2*X+b2)
plot(X,a1*X+b1)
xtitle("Ivan Napolskykh",'n','pi')
