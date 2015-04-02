function s = aiajdak(i,j,k,s1,s2,s3)
if (i==j+k || j==i+k || k==i+j)   
    s=sprintf('+0.5*a%s%d*a%s%d%s+0.5*a%s%d*a%s%d%s',s1,i,s2,j,s3,s1,j,s2,i,s3);
else
    s=sprintf('');
end    
end