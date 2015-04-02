function s = aiajdak(i,j,k)
if (i==j+k || j==i+k || k==i+j)   
    s=sprintf('+0.5*a%d*a%d',i,j);
else
    s=sprintf('');
end    
end