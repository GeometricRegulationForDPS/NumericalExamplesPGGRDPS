function s =sprint_dak(k,n,s1,s2,s3)

s=a0ajdak(k,k,s1,s2,s3);
for i=1:n
  for j=1:n
    si=aiajdak(i,j,k,s1,s2,s3);
    s0=s;
    s=sprintf('%s%s',s0,si);
  end
end
for i=1:n
  for j=1:n
    si=bibjdak(i,j,k,s1,s2,s3);
    s0=s;
    s=sprintf('%s%s',s0,si);
  end
end
end