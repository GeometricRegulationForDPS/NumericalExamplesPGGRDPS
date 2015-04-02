function s = a0ajdak(j,k,s1,s2,s3)
if (j==k)  
    s=sprintf('a%s0*a%s%d%s+a%s%d*a%s0%s',s1,s2,j,s3,s1,j,s2,s3);
else
    s=sprintf('');
end

end
