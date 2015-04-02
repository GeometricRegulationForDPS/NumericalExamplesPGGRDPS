function s = bibjdak(i,j,k)
if (i==j+k || j==i+k)
    s=sprintf('+0.5*b%d*b%d',i,j);  
elseif (k==i+j)
    s=sprintf('-0.5*b%d*b%d',i,j);  
else
    s=sprintf('');
end
end