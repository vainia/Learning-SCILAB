function pi=MojePi1(n)//Deklarujemy funkcje jako MojePi1 z jedna wartoscia pobierana, zapisujaca sie jako wartosc argumentu n. Junkcja zwraca wartosc argumentu pi
	suma=0
	for k=1:n
		suma=suma+1/k^2
	end
	pi=sqrt(6*suma)
endfunction //koniec definicji funkcji

function pi=MojePi2(n)
	suma=0
	for k=1:n
		suma=suma+((-1)^(k+1))/k^2
	end
	pi=sqrt(12*suma)
endfunction
