 function decimal = twos2decimal(x1)
 decimal=0;
n=length(x1);
x=[];
for i=1:n
    x=[x x1(i)];
end
if(x(1)==1) negative=1;
else negative=0;
end
if(negative==1)
x=x(2:n);
m=length(x);
for i=1:m % inverting
    if(x(i)==0) x(i)=1;
    else x(i)=0;
    end
end
i=m;
k=m+1;
    while(i>=1&& x(i)==1) % add 1
        k=i;
        x(i)=0;
        i=i-1;
    end
    if(k-1>=1)
        x(k-1)=1;
    else if((k-1)==0)
            x=[1 x];
        end
    end
end
for i=1:length(x) % convert to decimal
    decimal=decimal+2^(i-1)*x(length(x)-i+1);
end
if(negative==1) decimal=decimal-2*decimal;
end
 
        
    
    




