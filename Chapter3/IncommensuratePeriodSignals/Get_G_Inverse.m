function [f] = Get_G_Inverse()

load('G.txt');
VV=G;
Gm=VV(1:end,2:end);
Ginverse=inv(transpose(Gm));

[m,n] = size(Ginverse);

fid = fopen('./G_inverse.txt', 'w');

for i=1:m
    gammac=sprintf('0');
    gammas=sprintf('0');
    for j=1:n
        gammac_old=gammac;
        gammac=sprintf('%s+(%1.14E)*(Qc(%d,l)-C%d(PIt1))',gammac_old,Ginverse(i,j),j,j);
        gammas_old=gammas;
        gammas=sprintf('%s+(%1.14E)*(Qs(%d,l)-C%d(PIt2))',gammas_old,Ginverse(i,j),j,j);
    end
    fprintf(fid,'gammac%d \t %s \n',i,gammac);
    fprintf(fid,'gammas%d \t %s \n',i,gammas);
end


 
fclose(fid);



end

