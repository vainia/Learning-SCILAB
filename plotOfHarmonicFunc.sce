for k=1:100
    x(k)=k
    y(k)=harm(k)
end

plot(x,y,'.b')
plot(x,log(x),'*y')
xtitle("Ivan Napolskykh",'n','pi')
