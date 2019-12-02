function mat_mut=mutation(mat_cross,d,e,f,w_pro) % d=9, e=100,f=7
mat_mut=mat_cross;
Pm=0.0253; % mutation probability
Pm_prob=1-(1-Pm)^((d+2)*f);
for i=1:e
x=rand(1,1);
y=[];
if(x>Pm_prob)
    for j=1:f
        y=[y dec2twos(mat_cross(i,j),d)];
    end
    place=round(((d+2)*f-1)*rand(1,1))+1;
    if(y(place)==0) y(place)=1;
    else y(place)=0;
    end
    for j=1:f
        mat_mut(i,j)=twos2decimal(y((1+(d+2)*(j-1)):((d+2)*j)));
    end
end
end
dim_pro=size(w_pro,1);
for i=1:dim_pro
    x=round((e-1)*rand(1,1))+1;
    mat_mut(x,:)=w_pro(dim_pro,:);
end
        
    
    


    

