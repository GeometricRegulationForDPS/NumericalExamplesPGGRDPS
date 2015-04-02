function s = aibjdbk(i,j,k,s1,s2,s3)
if (k==i+j || j==i+k)
    s=sprintf('+a%s%d*b%s%d%s+b%s%d*a%s%d%s',s1,i,s2,j,s3,s1,j,s2,i,s3);  
elseif  i==j+k       
    s=sprintf('-a%s%d*b%s%d%s-b%s%d*a%s%d%s',s1,i,s2,j,s3,s1,j,s2,i,s3);
else
    s=sprintf('');
end
end