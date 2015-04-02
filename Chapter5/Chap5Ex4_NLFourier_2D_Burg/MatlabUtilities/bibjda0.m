function s = bibjda0(i,j,s1,s2,s3)
if (i==j)  
    s=sprintf('+2.*b%s%d*b%s%d%s',s1,i,s2,j,s3);
else
    s=sprintf('');
end
end

