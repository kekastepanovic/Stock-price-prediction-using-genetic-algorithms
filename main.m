close all;clear all;clc;
R1=1; C1=1;
mat_all=csvread('IBM.csv',R1,C1);
a=1000;
b=6000;
cc=700; 
c=700; 
row_choice=round((b-a)*rand(cc,1))+a;
d=9; 
e=100; 
f=7; 
mat_train=mat_all(row_choice,:);
mat_normalizovana=normal(mat_train,cc,f-1);
weights_bin=gen_weights_bin(c,d);
weights_dec=gen_weights_dec(weights_bin,c,d,f);
i=1;
while(i<=600)
[fit]=fitness(mat_all,row_choice,mat_train,mat_normalizovana,weights_dec,cc,c,e);
weights_best=the_biggest_fitness(fit,weights_dec,e);
mat_sel=selection(weights_dec,fit,e,f);
mat_cross=crossover(mat_sel,d,e,f);
mat_mut=mutation(mat_cross,d,e,f,weights_best);
weights_dec=mat_mut;
i=i+1;
end
training=(max(fit)/cc)*100
index=find(fit==max(fit));
weights_dec_max=weights_dec(index(1),:);
g=150 
row_choice_test= round((b-a)*rand(g,1))+a; 
mat_test=mat_all(row_choice_test,:);
mat_normalizovana_test=normal(mat_test,g,f-1);
testing=test(weights_dec_max,mat_normalizovana_test,row_choice_test,g,f,mat_all,mat_test);
testing=(testing/g)*100






        
        
    



