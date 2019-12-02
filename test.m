function [y]=test(weight,mat_test_nor,row_choice_test,n,m,mat_all,mat_test)%  n je 150,m je 7
y=0;
 for j=1:n
        if(1/(1+exp(-(sum(weight(1:(m-1)).*mat_test_nor(j,:))+weight(m)))))>=0.35
            res_sigmoid=1;
        else res_sigmoid=0;
        end
        res_real=mat_all((row_choice_test(j)+1),2)-mat_test(j,2);
        if(res_real>0) 
            res_real_sigmoid=1;
        else res_real_sigmoid=0;
        end
            if(res_sigmoid==res_real_sigmoid) y=y+1;
            end
 end
