//Algorytm 1 Konwersja binarna liczby calkowitej 
function [bin] = dec2bin_1(n)
   // n - konwertowana liczba calkowita (naturalna)
   i=1
   while n>0 do
      bin(i)=modulo(n,2)
      n=int(n/2)
      i=i+1
   end
endfunction

//Algorytm 2 Konwersja binarna ulamka 
function [bin] = dec2bin_2(u, prec)
   // u - konwertowany ulamek
   // prec - maksymalna liczba cyfr rozwinecia binarnego konwertowanego ulamka
   i=1
   while u>0 & i<=prec do
      bin(i)=int(2*u)
      u=2*u -bin(i)
      i=i+1
   end
endfunction

//Algorytm 3 Dekonwersja binarna liczby calkowitej 
function [x] = bin2dec_1(bi)
   // n - binarnie konwertowana liczba calkowita (naturalna)
   i=1
   x=0
   while i<=sum(bi^0) do
      
      x=x+(bi(i)*(2^(i-1)))
      
      i=i+1
   end
endfunction

//Algorytm 4 Dekonwersja binarna ulamka 
function [x] = bin2dec_2(bi)
   // u - binarnie konwertowany ulamek
   i=1
   x=0
   while i<=sum(bi^0) do
             
      x=x+(bi(i)/(2^i))
      
      i=i+1
   end
endfunction
