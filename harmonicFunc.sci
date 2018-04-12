function y=harm(n)
    H(1)=1
    for k=2:n
        H(k)=H(k-1)+1/k
    end
    y=H(n)
endfunction
