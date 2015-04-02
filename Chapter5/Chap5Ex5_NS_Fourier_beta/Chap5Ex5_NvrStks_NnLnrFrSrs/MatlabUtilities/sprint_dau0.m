function s =sprint_dau0(n)

s=sprintf('0.5*au0*au0x+0.5*au0*au0x+');
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