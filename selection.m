function mat=selection(weights_dec,fit,n,m) 
mat=zeros(n,m); % n is 100, m is 7
    for i=1:n
        index=RouletteWheel(fit/sum(fit));
        mat(i,:)=weights_dec(index,:);
end