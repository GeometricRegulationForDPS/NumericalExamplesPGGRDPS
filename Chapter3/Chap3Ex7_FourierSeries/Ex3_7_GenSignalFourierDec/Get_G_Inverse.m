function [f] = Get_G_Inverse()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

load('G.txt');
VV=G;
Gm=VV(1:end,2:end);
Ginverse=inv(transpose(Gm));

[m,n] = size(Ginverse);


fid = fopen('./G_inverse.txt', 'w');

% for i=1:m
%   for j=1:n
%     fprintf(fid, 'g%d%d \t %.14E \n',i,j,Ginverse(i,j));
%   end
% end

for i=1:m
    gammac=sprintf('0');
    gammas=sprintf('0');
    for j=1:n
        gammac_old=gammac;
        gammac=sprintf('%s+(%1.14E)*(Qc(%d,l,m)-C%d(PIt1))',gammac_old,Ginverse(i,j),j,j);
        gammas_old=gammas;
        gammas=sprintf('%s+(%1.14E)*(Qs(%d,l,m)-C%d(PIt2))',gammas_old,Ginverse(i,j),j,j);
    end
    fprintf(fid,'gammac%d \t %s \n',i,gammac);
    fprintf(fid,'gammas%d \t %s \n',i,gammas);
end


 
fclose(fid);



% 
% j=1;
% Gamma=sprintf('0');
% for k=0:k_max
%     g=0;
%     for l=1:l_max*2
%       g=g+Lc(j);
%       j=j+1;
%     end
%     if(abs(g)>eps)
%         Gamma_old=Gamma;
%         Gamma=sprintf('%s+(%.14e)*FourierCos(%d,t)',Gamma_old,g,k);
%     end
% end
% 
% j=1;
% for k=0:k_max
%     g=0;
%     for l=1:l_max*2
%       g=g+Ls(j);
%       j=j+1;
%     end
%     if(abs(g)>eps)
%         Gamma_old=Gamma;
%         Gamma=sprintf('%s+(%.14e)*FourierSin(%d,t)',Gamma_old,g,k);
%     end
% end
% 
% 
% fid = fopen('./Gamma.txt', 'w');
% 
% %fprintf(fid, '% Fourier Series\n');
% fprintf(fid, '%s  %s\n','Gamma',Gamma);
% 
% fclose(fid);
% 
% f=1;

end

