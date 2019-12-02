function x = gen_weigths_bin(n,m) %  dimensions 700x9
x=zeros(n,m);
for i=1:n
    for j=1:m
         r=rand(1,1);
         if(r>=0.5) x(i,j)=1;
         else x(i,j)=0;
         end
    end
end
