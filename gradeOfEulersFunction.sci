for k=1:10
    x(k)=k
    e1(k)=euler(k)
    e2(k)=0.5772156649
end

err=abs(e2-e1)

X=log(x)
Y=log(err)

[a,b]= methodOfLeastSquares(X,Y)
