function [] =print_f(n)

fout=fopen('../f.txt','w');

% Print the non-linear Fourier rapresentation of the non
% linear term F(z)=-z*z_x in the Burger Equation

s1=sprint_da0(n,'u','u','x');
s2=sprint_da0(n,'v','u','y');
fprintf(fout,'f_au0\t -0.5*(%s+%s)\n',s1,s2);

s1=sprint_da0(n,'u','v','x');
s2=sprint_da0(n,'v','v','y');
fprintf(fout,'f_av0\t -0.5*(%s+%s)\n',s1,s2);

for k=1:n
    s1=sprint_dak(k,n,'u','u','x');
    s2=sprint_dak(k,n,'v','u','y');
    fprintf(fout,'f_au%d\t -0.5*(%s+%s)*(N>%d)\n',k,s1,s2,k-1);
    s1=sprint_dbk(k,n,'u','u','x');
    s2=sprint_dbk(k,n,'v','u','y');
    fprintf(fout,'f_bu%d\t -0.5*(%s+%s)*(N>%d)\n',k,s1,s2,k-1);
    
    
    s1=sprint_dak(k,n,'u','v','x');
    s2=sprint_dak(k,n,'v','v','y');
    fprintf(fout,'f_av%d\t -0.5*(%s+%s)*(N>%d)\n',k,s1,s2,k-1);
    s1=sprint_dbk(k,n,'u','v','x');
    s2=sprint_dbk(k,n,'v','v','y');
    fprintf(fout,'f_bv%d\t -0.5*(%s+%s)*(N>%d)\n',k,s1,s2,k-1);
end

% Print the Fourier coeficients of the specific disturbance 
% in example 5.5 with d=M2+A2*sin(alpha*t) 
fprintf(fout,'d_a0\t 2*M2\n');
if n>0
    fprintf(fout,'d_a1\t 0*(N>0)\n');
    fprintf(fout,'d_b1\t A2*(N>0)\n');
end
for k=2:n
    fprintf(fout,'d_a%d\t 0*(N>%d)\n',k,k-1);
    fprintf(fout,'d_b%d\t 0*(N>%d)\n',k,k-1);
end
fprintf(fout,'d\t M2+A2*sin(alpha*t)\n');


% Print Gamma for the example 5.5 with yr=M1+A1*sin(alpha*t) 

fprintf(fout,'Gamma_a0\t (2*M1-C(atu0))/G\n');
if n>0
    fprintf(fout,'Gamma_a1\t (0-C(atu1))/G*(N>0)\n');
    fprintf(fout,'Gamma_b1\t (A1-C(btu1))/G*(N>0)\n');
end
for k=2:n
    fprintf(fout,'Gamma_a%d\t (0-C(atu%d))/G*(N>%d)\n',k,k,k-1);
    fprintf(fout,'Gamma_b%d\t (0-C(btu%d))/G*(N>%d)\n',k,k,k-1);
end
s=sprintf('gamma\t0.5*Gamma_a0');
for k=1:n
    s0=s;
    s=sprintf('%s+Gamma_a%d*cos(alpha*%d*t)+Gamma_b%d*sin(alpha*%d*t)',s0,k,k,k,k);
 end
fprintf(fout,'%s\n',s);

fprintf(fout,'yr\t M1+A1*sin(alpha*t)\n');

end

