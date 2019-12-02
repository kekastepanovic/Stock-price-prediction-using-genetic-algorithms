function mat_cross=crossover(mat_sel,d,e,f) % d=9,e=100,f=7;
mat_cross=zeros(e,f);                   
for j=1:f
    for i=1:2:e
        x= dec2twos(mat_sel(i,j),d);
        y= dec2twos(mat_sel(i+1,j),d);
        CI1=round(3*rand(1,1))+1;
        CI2=round(4*rand(1,1))+6;
        z1=[x(1:CI1) y(CI1+1:CI2) x(CI2+1:end)]; % lower threshold
        z2=[y(1:CI1) x(CI1+1:CI2) y(CI2+1:end)]; % upper threshold
        mat_cross(i,j)=twos2decimal(z1);
        mat_cross(i+1,j)=twos2decimal(z2);
    end
end




