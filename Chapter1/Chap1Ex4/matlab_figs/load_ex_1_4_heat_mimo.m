



load('surf_data.txt');

z=surf_data;

 
% x=linspace(0,1,30);
% lx=length(x);

x=z(:,1);


 t= 0:.01:10;
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
tind=[1:50 52:10:lt];
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

L=x(end)

% xlabel('$x$','Interpreter','latex', 'fontsize', 20); 
% ylabel('$y$','Interpreter','latex', 'fontsize',20); 
% zlabel('$z$','Interpreter','latex','rotation',0, 'fontsize', 20); 
 
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
% 

%  xlabel('x')
%   ylabel('t' )
%    zlabel('z','rotation',0)

%%%%%%%%

xlabel('x axis')
ylabel('t axis')
zlabel('z axis')

  
axis([0,L+.05,0,10,min(min(z_plot))-.1, max( max(z_plot))+.1])

% set(gca,'XTick',[0,.4,.8,1.2,1.4])
% set(gca,'XTickLabel',{'0','.4','.8','1.2','1.2'})


%  axis([0,x(end),0,tplot(end),min(min(z_plot))-.1, max( max(z_plot))+.1])

grid on


%  print -deps2c plot_surf_mimo.eps


 
exportfig('Ex1_4_f12_surf.pdf',...
    'width',3.7,...
    'color','gray','Resolution',300,'FontMode','fixed','FontSize',10) 
  


 

load('y_data.txt');

vv=y_data;

ty=vv(:,1);

y1=vv(:,2);
yr1=vv(:,3)
y2=vv(:,4);
yr2=vv(:,5);

%  set(0,'DefaultAxesFontSize', 20)

figure 
plot(ty,y1,ty,yr1,'--','LineWidth',2)

%  xlabel('t')
%   ylabel('y','rotation',0)

% xlabel('$t$','Interpreter','latex');
%  ylabel('$y_1$','Interpreter','latex','rotation',0);

xlabel('t axis')
ylabel('y axis')

  
  grid on
  
  axis([0,ty(end),min(min([y1 yr1]))-.1 max(max([y1 yr1]))+.1])
  
%   print -deps2c plot_y1_mimo.eps
  

% Export the figure.
exportfig('Ex1_4_f8_y1.pdf',...
    'width',3.7,...
    'color','gray','Resolution',300,'FontMode','fixed','FontSize',10) 

  
  figure 
plot(ty,y2,ty,yr2,'--','LineWidth',2)

%  xlabel('t')
%   ylabel('y','rotation',0)

% xlabel('$t$','Interpreter','latex');
%  ylabel('$y_2$','Interpreter','latex','rotation',0);

xlabel('t axis')
ylabel('y axis')
  
  grid on
  
   axis([0,ty(end),min(min([y2 yr2]))-.1 max(max([y2 yr2]))+.1])
  
%  print -deps2c plot_y2_mimo.eps

  % Export the figure.
exportfig('Ex1_4_f10_y2.pdf',...
    'width',3.7,...
    'color','gray','Resolution',300,'FontMode','fixed','FontSize',10) 

  
  figure 
  
   
 e1=y1-yr1;  
  
% set(0,'DefaultAxesFontSize', 20) 
 
 
 plot(ty,e1,'LineWidth',2)

%  xlabel('t')
%   ylabel('e','rotation',0)

% xlabel('$t$','Interpreter','latex');
%  ylabel('$e_1$','Interpreter','latex','rotation',0);
  
  grid on
  
  xlabel('t axis')
ylabel('e axis')
  
  axis([0,ty(end),min(e1)-.1,max(e1)+.1])
  
 % print -deps2c plot_e1_mimo.eps
 
 % Export the figure.
exportfig('Ex1_4_f9_e1.pdf',...
    'width',3.7,...
    'color','gray','Resolution',300,'FontMode','fixed','FontSize',10) 

  
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%
    figure 
  
   
 e2=y2-yr2;  
  
% set(0,'DefaultAxesFontSize', 20) 
 
 
 plot(ty,e2,'LineWidth',2)

%  xlabel('t')
%   ylabel('e','rotation',0)

% xlabel('$t$','Interpreter','latex');
%  ylabel('$e_2$','Interpreter','latex','rotation',0);
  
  grid on
  
    xlabel('t axis')
ylabel('e axis')

  
  axis([0,ty(end),min(e2)-.1,max(e2)+.1])
  
%  print -deps2c plot_e2_mimo.eps

 % Export the figure.
exportfig('Ex1_4_f11_e2.pdf',...
    'width',3.7,...
    'color','gray','Resolution',300,'FontMode','fixed','FontSize',10) 
  
  
  