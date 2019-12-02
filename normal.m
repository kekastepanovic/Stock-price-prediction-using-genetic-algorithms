function y=normal(x,n,m)
y=zeros(n,m); % n is 700, m is 6
mean_value=zeros(1,m);
deviation=zeros(1,m);
for i=1:m
    mean_value(i)=mean(x(:,i));
    deviation(i)=std(x(:,i));
end
for j=1:m
    for i=1:n
        y(i,j)=(x(i,j)-mean_value(j))/deviation(j);
    end
end

    
