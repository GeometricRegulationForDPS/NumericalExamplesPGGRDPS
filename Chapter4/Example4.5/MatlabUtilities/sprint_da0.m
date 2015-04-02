function s =sprint_da0(n)

s=sprintf('0.5*a0*a0');
for i=1:n
  si=aiajda0(i,i);
  s0=s;
  s=sprintf('%s%s',s0,si);
end
for i=1:n
  si=bibjda0(i,i);
  s0=s;
  s=sprintf('%s%s',s0,si);
end
end