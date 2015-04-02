function s =sprint_dbk(k,n,s1,s2,s3)

s=a0bjdbk(k,k,s1,s2,s3);
for i=1:n
  for j=1:n
    si=aibjdbk(i,j,k,s1,s2,s3);
    s0=s;
    s=sprintf('%s%s',s0,si);
  end
end