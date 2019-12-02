function s= the_biggest_fitness(fit,w_dec,e)
x=max(fit);
j=1;
for i=1:e
    if(fit(i)==x)
   s(j,:)= w_dec(i,:);
   j=j+1;
    end
end

    
