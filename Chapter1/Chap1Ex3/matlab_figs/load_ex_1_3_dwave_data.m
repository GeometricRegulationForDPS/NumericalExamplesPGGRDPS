



load('surf_data.txt');

z= surf_data;

 
% x=linspace(0,1,30);
% lx=length(x);

x=z(:,1);


 t= 0:.025:20;
%t=linspace(0,6*pi,190);
lt=length(t);
figure

% tind=[1:20 22:4:lt];
% tplot=t(tind);
% 
% xind=1:2:lx;
% 
% xplot=  x(xind);
% 
%  z_plot=z(xind,tind)';
% 
% 
% set(0,'DefaultAxesFontSize', 20)
% 
% surf(xplot,tplot,z_plot)

%%%%%%%%%
tind=[1:60 61:10:lt];
tplot=t(tind);

% xind=1:2:lx;
% 
% xplot=  x(xind);



 z_plot=z(:,tind);
 
  z_plot(:,1)=zeros(size(x));
 
% z_plot(28,1)=0;


%set(0,'DefaultAxesFontSize', 20)

surf(x,tplot,z_plot')

%%%%%%%%

xlabel('x axis')
ylabel('t axis')
zlabel('z axis')



%  xlabel('x')
%   ylabel('t' )
%    zlabel('z','rotation',0)
%   
 axis([0,x(end),0,tplot(end),min(min(z_plot))-.1, max( max(z_plot))+.1])

grid on


%  print -deps2 plot_surf_dwave_setpt.eps

exportfig('Ex1_3_f6_surf.pdf',...
    'width',3.7,...
    'color','gray','Resolution',300,'FontMode','fixed','FontSize',10) 
  

 

 

load('y_data.txt');

vv=y_data;

ty=vv(:,1);

y=vv(:,2);

yr=vv(:,3);

d=vv(:,4);

Gamma=vv(:,5);

% yr=ones(size(ty));
% 
% set(0,'DefaultAxesFontSize', 20)

figure 
plot(ty,y,ty,yr,'--','LineWidth',2)

xlabel('t axis')
ylabel('y axis')

%  xlabel('t')
%   ylabel('y','rotation',0)

% xlabel('$t$','Interpreter','latex');
%  ylabel('$y$','Interpreter','latex','rotation',0);
  
  grid on
  
  axis([0,ty(end),min(min([y yr]))-.1 max(max([y yr]))+.1])
  
%   print -deps2 plot_y_dwave_setpt.eps

 % Export the figure.
exportfig('Ex1_3_f4_y.pdf',...
    'width',3.7,...
    'color','gray','Resolution',300,'FontMode','fixed','FontSize',10) 

  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
  figure 
  
   
 e=y-yr;  
  
% set(0,'DefaultAxesFontSize', 20) 
 
 
 plot(ty,e,'LineWidth',2)

%  xlabel('t')
%   ylabel('e','rotation',0)

% xlabel('$t$','Interpreter','latex');
%  ylabel('$e$','Interpreter','latex','rotation',0);

xlabel('t axis')
ylabel('e axis')
  
  grid on
  
  axis([0,ty(end),min(e)-.1,max(e)+.1])
  
%   print -deps2 plot_e_dwave_setpt.eps
  
  
     % Export the figure.
exportfig('Ex1_3_f5_e.pdf',...
    'width',3.7,...
    'color','gray','Resolution',300,'FontMode','fixed','FontSize',10) 
  
  
  