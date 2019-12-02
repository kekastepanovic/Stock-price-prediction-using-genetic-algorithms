function [x]=fitness(mat_all,row_choice,mat_train,mat_norm,weights_dec,nn,n,e) % n je 700, nn je 700,e je 100
x=zeros(e,1);
res=zeros(nn*e,1);
for i=1:e % from 1 to 100
    for j=1:nn % from 1 to 700
        res(j+nn*(i-1))=sum(weights_dec(i,1:end-1).*mat_norm(j,:))+weights_dec(i,end);
    end
end

  for i=1:e % from 1 to 100
    for j=1:nn % from 1 to 700
        if(1/(1+exp(-res(j+nn*(i-1))))>=0.35)
            res_sigmoid=1;
        else res_sigmoid=0;
        end
        res_real=mat_all((row_choice(j)+1),2)-mat_train(j,2);
        if(res_real>0) res_real_sigmoid=1;
        else res_real_sigmoid=0;
        end
            if(res_sigmoid==res_real_sigmoid) x(i)=x(i)+1;
            end
    end
end

        
        
    
