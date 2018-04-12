function p = sumpit3(a,b) 
p = max(abs(a),abs(b)) 
q = min(abs(a),abs(b)) 
while (q < > 0.0) 
    r = (q/p)^2 
    s = r /(4+ r) 
    q = s * q 
    p = p + 2*s*p 
end 
endfunction
