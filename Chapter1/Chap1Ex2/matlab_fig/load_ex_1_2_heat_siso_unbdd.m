
addpath(genpath('~/figuremaker/'))


load('surf_data.txt');

z=surf_data;

 
% x=linspace(0,1,30);
% lx=length(x);

x=z(:,1);


 t= 0:.05:6;
 
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
tind=[1:20 22:1:lt];
tplot=t(tind);

% xind=1:2:lx;
% 
% xplot=  x(xind);



 z_plot=z(:,tind);
 
  z_plot(:,1)=zeros(size(x));
 
% z_plot(28,1)=0;


%  set(0,'DefaultAxesFontSize', 20)

surf(x,tplot,z_plot')

%%%%%%%%

L=x(end)

xlabel('x axis')
ylabel('t axis')
zlabel('z axis')

%  xlabel('$x$','Interpreter','latex'); %, 'fontsize', 20); 
% ylabel('$t$','Interpreter','latex');  %, 'fontsize',20); 
%  zlabel('$z$','Interpreter','latex'); %,'rotation',0, 'fontsize', 20); 
 
% xhandle=xlabel('x')
% set(xhandle,'Fontsize',20)
% set(xhandle,'Fontangle','italic')
% set(xhandle,'Fontname','Timesnewroman')
% 
% yhandle=ylabel('t')
% set(yhandle,'Fontsize',20)
% set(yhandle,'Fontangle','italic')
% set(yhandle,'Fontname','Timesnewroman')
% 
% zhandle=zlabel('z','rotation',0)
% set(zhandle,'Fontsize',20)
% set(zhandle,'Fontangle','italic')
% set(zhandle,'Fontname','Timesnewroman')
% 
%  xlabel('$x$','Interpreter','latex');
%  
% %  ylabel('$t$','Interpreter','latex','rotation',0);
% 
%   ylabel('$t$','Interpreter','latex');
%   
%   ylabel('$t$','Interpreter','latex');
%   




%  xlabel('x')
%   ylabel('t' )
%    zlabel('z','rotation',0)
  
%axis([0,L+.05,0,20,min(min(z_plot))-.1, max( max(z_plot))+.1])

axis([0,1,0,6,min(min(z_plot))-.1, max( max(z_plot))+.1])

% set(gca,'XTick',[0,.4,.8,1.2,1.4])
% set(gca,'XTickLabel',{'0','.4','.8','1.2','1.2'})


%  axis([0,x(end),0,tplot(end),min(min(z_plot))-.1, max( max(z_plot))+.1])

grid on


%   print -deps2c plot_surf_mimo_unbdd.eps

%   print -deps2 -tiff -r300  ch2_ex_2_4_f2_11_surf.eps 
 
 % Export the figure.
exportfig('Ex1_2_f3_surf.pdf',...
    'width',3.7,...
    'color','gray','Resolution',300,'FontMode','fixed','FontSize',10) 
  
  
  
  

load('y_data.txt');

vv=y_data;

ty=vv(:,1);

y=vv(:,2);
yr=vv(:,3)
Gamma=vv(:,5);
% y2=vv(:,4);
% yr2=vv(:,5);
% Gam1=vv(:,6);
% Gam2=vv(:,7);

% set(0,'DefaultAxesFontSize', 20)

figure 
plot(ty,y,ty,yr,'--','LineWidth',2)

%  xlabel('t')
%   ylabel('y','rotation',0)

% xlabel('$t$','Interpreter','latex');
%  ylabel('$y$','Interpreter','latex'); %,'rotation',0);

xlabel('t axis')
ylabel('y axis')

%   
  grid on
  
  axis([0,ty(end),min(min([y yr]))-.1 max(max([y yr]))+.1])
  
%  print -deps2  plot_y1_mimo_unbdd.eps

 % Export the figure.
exportfig('Ex1_2_f1_y.pdf',...
    'width',3.7,...
    'color','gray','Resolution',300,'FontMode','fixed','FontSize',10) 
  


  
%   
%   figure 
% plot(ty,y2,ty,yr2,'LineWidth',2)
% 
% %  xlabel('t')
% %   ylabel('y','rotation',0)
% 
% xlabel('$t$','Interpreter','latex');
%  ylabel('$y_2$','Interpreter','latex','rotation',0);
%   
%   grid on
%   
%    axis([0,ty(end),min(min([y2 yr2]))-.1 max(max([y2 yr2]))+.1])
%   
%   print -deps2c plot_y2_mimo_unbdd.eps
% 
%   
%   
    figure 
%   
   
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
  
   % Export the figure.
exportfig('Ex1_2_f2_e.pdf',...
    'width',3.7,...
    'color','gray','Resolution',300,'FontMode','fixed','FontSize',10) 
  

  
%  print -deps2c plot_e1_mimo_unbdd.eps
  
  
%   %%%%%%%%%%%%%%%%%%%%%%%%%%%
%     figure 
%   
%    
%  e2=y2-yr2;  
%   
%  set(0,'DefaultAxesFontSize', 20) 
%  
%  
%  plot(ty,e2,'LineWidth',2)
% 
% %  xlabel('t')
% %   ylabel('e','rotation',0)
% 
% xlabel('$t$','Interpreter','latex');
%  ylabel('$e_2$','Interpreter','latex','rotation',0);
%   
%   grid on
%   
%   axis([0,ty(end),min(e2)-.1,max(e2)+.1])
%   
%   print -deps2c plot_e2_mimo_unbdd.eps
%   
%   
   %%%%%%%%%%%%%%%%%%%%%%%%%%%
    figure 
  
   
  
  
 % set(0,'DefaultAxesFontSize', 20) 
 
 
 plot(ty,Gamma,'LineWidth',2)

%  xlabel('t')
%   ylabel('e','rotation',0)

% xlabel('$t$','Interpreter','latex');
%  ylabel('$\Gamma $','Interpreter','latex');

xlabel('t axis')
ylabel('u axis')

  
  grid on
  
  axis([0,ty(end),min(Gamma)-.1,max(Gamma)+.1])
  
%  print -deps2c plot_Gam1_mimo_unbdd.eps

 % Export the figure.
exportfig('Ex1_2_f4_gamma.pdf',...
    'width',3.7,...
    'color','gray','Resolution',300,'FontMode','fixed','FontSize',10) 
  

  
  
   %%%%%%%%%%%%%%%%%%%%%%%%%%%
%     figure 
%   
%    
%   
%   
%  set(0,'DefaultAxesFontSize', 20) 
%  
%  
%  plot(ty,Gam2,'LineWidth',2)
% 
% %  xlabel('t')
% %   ylabel('e','rotation',0)
% 
% xlabel('$t$','Interpreter','latex');
%  ylabel('$\Gamma_2 w$','Interpreter','latex');
%   
%   grid on
%   
%   axis([0,ty(end),min(Gam2)-.1,max(Gam2)+.1])
%   
%   print -deps2c plot_Gam2_mimo_unbdd.eps 
%   
%   
%   