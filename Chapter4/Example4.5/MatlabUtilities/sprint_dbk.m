function s =sprint_dbk(k,n)

s=a0bjdbk(k,k);
for i=1:n
  for j=1:n
    si=aibjdbk(i,j,k);
    s0=s;
    s=sprintf('%s%s',s0,si);
  end
end