function calka=calkujPL(f,n)
	x=0:1/n:1
	calka=sum(f(x(1:n)))/n
endfunction

function calka=calkujPP(f,n)
	x=0:1/n:1
	calka=sum(f(x(2:n+1)))/n
endfunction

function calka=calkujT(f,n)
	calka=(calkujPL(f1,n)+calkujPP(f1,n))/2
endfunction

function calka=calkujMC(f,n)
    x=rand(1,n)
	calka=sum(f(x(1:n)))/n
endfunction
