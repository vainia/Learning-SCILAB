s=0;
for k=1:100000 do
    s=s+1/k^2;
end
disp(s)

s1=0;
for k=100000:(-1):1 do
    s1=s1+1/k^2;
end
disp(s1)
