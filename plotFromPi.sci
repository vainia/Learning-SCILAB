clf

m=100;

for k = 1:m do
	n=k
	x(k)=n
	pi1(k)=MojePi1(n)
	pi2(k)=MojePi2(n)
end

//y=%pi*ones(x)

plot2d(x, [pi1, pi2])
xtitle("Ivan Napolskykh",'n','pi')

