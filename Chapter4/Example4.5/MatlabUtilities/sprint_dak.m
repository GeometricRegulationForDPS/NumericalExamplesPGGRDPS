function s =sprint_dak(k,n)

s=a0ajdak(k,k);
for i=1:n
  for j=1:n
    si=aiajdak(i,j,k);
    s0=s;
    s=sprintf('%s%s',s0,si);
  end
end
for i=1:n
  for j=1:n
    si=bibjdak(i,j,k);
    s0=s;
    s=sprintf('%s%s',s0,si);
  end
end
end