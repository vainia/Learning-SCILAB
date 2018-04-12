function [y] = dirichlet(x)
    m=length(x)
    y=zeros(x)
    for i=1:m do
        for k=1:10^4 do
            y(i)=y(i)+1/k^x(i)
        end
    end
endfunction

x=linspace(1.1,5.50)
y=dirichlet(x)

clf
plot(x,y)
xtitle("Funkcja Dirichleta",'x','D(x)')
xtitle("Ivan Napolskykh")
