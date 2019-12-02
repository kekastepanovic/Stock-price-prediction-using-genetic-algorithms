function y=gen_weights_dec(x,n,d,f) % n is 700,d is 9,f is 7
y=zeros(n/f,f); % dimensions 100x7
for i=1:n/f;
    for j=1:f
        y(i,j)=twos2decimal(x(j+(f-1)*(i-1),:));
    end
end
        