    N=1000
    K=0
    
    for k=1:N
        x=rand(1,1)
        y=2*rand(1,1)
        if(y<=f1(x))
            K=K+1
        end
    end
    
    disp(2*K/N)
