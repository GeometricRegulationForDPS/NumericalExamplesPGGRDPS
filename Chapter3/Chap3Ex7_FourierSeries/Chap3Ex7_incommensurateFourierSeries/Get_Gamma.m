function [f] = Get_Gamma()

load('G.txt');
VV=G;
Gm=VV(1:end,2:end);
Ginverse=inv(transpose(Gm));

[m,n] = size(Ginverse);

fid = fopen('./Gamma.txt', 'w');

for i=1:m
    gamma1=sprintf('0');
    gamma2=sprintf('0');
    for j=1:n
        gamma1_old=gamma1;
        gamma1=sprintf('%s+(%1.14E)*(Q1(%d,l)-C%d(PIt1))',gamma1_old,Ginverse(i,j),j,j);
        gamma2_old=gamma2;
        gamma2=sprintf('%s+(%1.14E)*(Q2(%d,l)-C%d(PIt2))',gamma2_old,Ginverse(i,j),j,j);
    end
    fprintf(fid,'Gamma%d1 \t %s \n',i,gamma1);
    fprintf(fid,'Gamma%d2 \t %s \n',i,gamma2);
end


 
fclose(fid);



end

