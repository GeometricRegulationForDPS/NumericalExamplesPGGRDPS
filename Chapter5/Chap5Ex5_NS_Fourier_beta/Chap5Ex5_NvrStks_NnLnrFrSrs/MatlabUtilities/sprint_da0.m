function s =sprint_da0(n,s1,s2,s3)

s=sprintf('a%s0*a%s0%s',s1,s2,s3);
for i=1:n
    si=aiaida0(i,s1,s2,s3);
    s0=s;
    s=sprintf('%s%s',s0,si);
end
for i=1:n
    si=bibida0(i,s1,s2,s3);
    s0=s;
    s=sprintf('%s%s',s0,si);
end
end