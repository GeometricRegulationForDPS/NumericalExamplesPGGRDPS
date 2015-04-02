function s = aibjdbk(i,j,k)
if (k==i+j || j==i+k)
    s=sprintf('+a%d*b%d',i,j);  
elseif  i==j+k       
    s=sprintf('-a%d*b%d',i,j); 
else
    s=sprintf('');
end
end