function s = bibjdak(i,j,k,s1,s2,s3)
if (i==j+k || j==i+k)
    s=sprintf('+0.5*b%s%d*b%s%d%s+0.5*b%s%d*b%s%d%s',s1,i,s2,j,s3,s1,j,s2,i,s3);  
elseif (k==i+j)
    s=sprintf('-0.5*b%s%d*b%s%d%s-0.5*b%s%d*b%s%d%s',s1,i,s2,j,s3,s1,j,s2,i,s3);  
else
    s=sprintf('');
end
end