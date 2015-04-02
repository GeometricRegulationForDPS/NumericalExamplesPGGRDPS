function [f] = Get_Gamma(k_max,l_max,m_gamma,eps)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

load('data.txt');
VV=data;

fid = fopen('./Gamma.txt', 'w');

for m=1:m_gamma
        
    Lc=VV(1:end,3+2*m-1); 
    Ls=VV(1:end,3+2*m);
    
    j=1;
    Gamma=sprintf('0');
    for k=0:k_max
        g=0;
        for l=1:l_max*2
            g=g+Lc(j);
            j=j+1;
        end
        if(abs(g)>eps)
        Gamma_old=Gamma;
        Gamma=sprintf('%s+(%.14e)*FourierCos(%d,t)',Gamma_old,g,k);
        end
    end
    j=1;
    for k=0:k_max
        g=0;
        for l=1:l_max*2
            g=g+Ls(j);
            j=j+1;
        end
        if(abs(g)>eps)
        Gamma_old=Gamma;
        Gamma=sprintf('%s+(%.14e)*FourierSin(%d,t)',Gamma_old,g,k);
        end
    end
    fprintf(fid, 'Gamma%d  %s\n',m,Gamma);
end


fclose(fid);

f=1;

end

