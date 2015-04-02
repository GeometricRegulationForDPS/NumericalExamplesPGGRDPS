function [f] = Get_Gamma(kmax,nmax,lmax)

load('data.txt');
DATA=data;
fid = fopen('./Gamma.txt', 'w');


y1 = @(t) 1+cos(t)+sin(2*t)+cos(5*t)+sin(10*t);
y2 = @(t) pw(t,sqrt(2));
y3 = @(t) pw(t,sqrt(3));
y4 = @(t) 2+sin(t)+cos(2*t)+sin(5*t)+cos(10*t);


for n=1:nmax
    
    Lc=DATA(1:end,2+2*n-1); 
    Ls=DATA(1:end,2+2*n);
    
    j=1;
    Gamma=sprintf('0');
    for k=0:kmax
        for l=1:lmax
            gc=Lc(j);
            gs=Ls(j);
            j=j+1;
    
            if(l==1)
                p=pi;
                ye = @(t) y1(t);
            elseif(l==2)
                p=sqrt(2);
                ye = @(t) y2(t);
            elseif(l==3)
                p=sqrt(3);
                ye = @(t) y3(t);
            else
                p=pi;
                ye = @(t) y4(t);
            end
            alpha=pi/p;            
            fun1 = @(t) (1/p) .* ye(t) .* cos(alpha .* k .* t);        
           
            ak = gquad10(fun1, 0, 2*p,100);
            ak = ak / (1+1.*(k==0));        
            
            fun2 = @(t) (1/p) .* ye(t) .* sin(alpha .* k .* t);
            bk = gquad10(fun2, 0, 2*p,100);
   
            if(abs(ak)>1.e-12)
                Gamma_old=Gamma;
                Gamma=sprintf('%s+(%.14e)*((%.14e)*FourierCos(%d,%d,t)+(%.14e)*FourierSin(%d,%d,t))',Gamma_old,ak,gc,k,l,gs,k,l);
            end
            if(abs(bk)>1.e-12)
                Gamma_old=Gamma;
                Gamma=sprintf('%s+(%.14e)*((%.14e)*FourierSin(%d,%d,t)-(%.14e)*FourierCos(%d,%d,t))',Gamma_old,bk,gc,k,l,gs,k,l);
            end
        end
    end
    fprintf(fid, 'Gamma%d \t %s\n',n,Gamma);
end
  
f=1;
end

function y=pw(t,p)
t1=mod(t,2 .* p) ./ p;
y=t1.*(t1<=1)+(2-t1).*(t1>1);   
end

function y=step(t,dt,k)
% the larger k the faster the transition takes place
y=1./( 1+exp( -(2.*k.*t/dt) ) );
end

function area=gquad10(fun,xlow,xhigh,mparts)
%x=b
%integral (f(x) dx ) = 
%x=a
%    j=n   k=m
%  d1*sum  sum (  wf(j)*fun(a1+k*k+d1*bp(j))  )
%    j=1   k=1
%
%m=mparts and n=nquad
% User m functions called:  argument fun
%------------------

if nargin == 3, mparts =1; end

%weight factors are
wf=[ 6.66713443086879e-02; ...
    14.94513491505806e-02; ...
	21.90863625159821e-02; ...
	26.92667193099964e-02; ...
	29.55242247147528e-02 ];
wf=[wf; wf([5:-1:1])];

% the base points are
bp = [-97.39065285171718e-02; ...
      -86.50633666889846e-02; ...
	  -67.94095682990245e-02; ...
	  -43.33953941292472e-02; ...
	  -14.88743389816312e-02];
bp=[bp;-bp([5:-1:1])];

d=(xhigh-xlow)/mparts;
d2=d/2; nquad=length(bp);
x=(d2*bp)*ones(1,mparts)+(d*ones(nquad,1))*(1:mparts);
% if mparts=1 x= (b-a)/2*bp+(b-a)*ones(10,1);
x=x(:)+(xlow-d2); 
fv=feval(fun,x);wv=wf*ones(1,mparts);

area=d2*(wv(:)'*fv(:));  

end
