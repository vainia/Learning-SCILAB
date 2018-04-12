clear y r t
//y(1)=rand()
y(1)=0.2
z(1)=y(1)
clf

r=4.0

for t=1:100 do
    y(t+1)=r*y(t)*(1-y(t))
    z(t+1)=r*z(t)-r*(z(t))^2
end

//plot(y)
plot2d([y,z])
xtitle("Ivan Napolskykh")
