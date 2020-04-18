%%%choose 18 method and 8 evaluation
clear all;close all;clc
load('Q_grayscale.mat');
x=1:10;
a=zeros(18,10);
width=0.5;
met=["DWT",'DTCWT','NSCT','GFF','SR','ASR','MWGF','ICA','NSCT-SR',...
    'SSSDI','QUADTREE','DSIFT','SRCF','GFDF','BRW','MISF','CNN','MADCNN'];
	
%% QMI----------------------------------------------------------
for i=1:10
a(:,i)=Q(:,1,i);
end
figure,plot(x,a(1,:),'-*', x,a(2,:),'-o', x,a(3,:),'-s', x,a(4,:),'-d', x,a(5,:),'-x',...
    x,a(6,:),'-v', x,a(7,:),'-h', x,a(8,:),'-p', x,a(9,:),'-*', x,a(10,:),'-o',...
    x,a(11,:),'-s', x,a(12,:),'-d', x,a(13,:),'-x', x,a(14,:),'-v', x,a(15,:),'-h',...
    x,a(16,:),'-p', x,a(17,:),'-*', x,a(18,:),'-o',  'LineWidth',width);
grid on
ave = roundn(mean(a,2),-4);
for m=1:18
    str1(m)=strcat(met(m), ':', {32}, num2str(ave(m),'%.4f'));
end
legend1=legend({str1(1),str1(2),str1(3),str1(4),str1(5),...
    str1(6),str1(7),str1(8),str1(9),str1(10),str1(11),...
    str1(12),str1(13),str1(14),str1(15),...
    str1(16),str1(17),str1(18)},'Location','SouthEastOutside');
set(legend1,'FontSize',8);
axis square
set(gca,'linewidth',1.2);
title('$Q_{MI}$','Interpreter','latex','FontSize',20);
saveas(gcf,'grayscale\QMI','epsc');

%% NCIE----------------------------------------------------------
for i=1:10
a(:,i)=Q(:,2,i);
end
figure,plot(x,a(1,:),'-*', x,a(2,:),'-o', x,a(3,:),'-s', x,a(4,:),'-d', x,a(5,:),'-x',...
    x,a(6,:),'-v', x,a(7,:),'-h', x,a(8,:),'-p', x,a(9,:),'-*', x,a(10,:),'-o',...
    x,a(11,:),'-s', x,a(12,:),'-d', x,a(13,:),'-x', x,a(14,:),'-v', x,a(15,:),'-h',...
    x,a(16,:),'-p', x,a(17,:),'-*', x,a(18,:),'-o',  'LineWidth',width);
grid on
ave = roundn(mean(a,2),-4);
for m=1:18
    str2(m)=strcat(met(m), ':', {32}, num2str(ave(m),'%.4f'));
end
legend2=legend({str2(1),str2(2),str2(3),str2(4),str2(5),...
    str2(6),str2(7),str2(8),str2(9),str2(10),str2(11),...
    str2(12),str2(13),str2(14),str2(15),...
    str2(16),str2(17),str2(18)},'Location','SouthEastOutside');
set(legend2,'FontSize',8);
axis square
set(gca,'linewidth',1.2);
title('$Q_{NCIE}$','Interpreter','latex','FontSize',20);
saveas(gcf,'grayscale\QNCIE','epsc');

%% QG----------------------------------------------------------
for i=1:10
a(:,i)=Q(:,3,i);
end
figure,plot(x,a(1,:),'-*', x,a(2,:),'-o', x,a(3,:),'-s', x,a(4,:),'-d', x,a(5,:),'-x',...
    x,a(6,:),'-v', x,a(7,:),'-h', x,a(8,:),'-p', x,a(9,:),'-*', x,a(10,:),'-o',...
    x,a(11,:),'-s', x,a(12,:),'-d', x,a(13,:),'-x', x,a(14,:),'-v', x,a(15,:),'-h',...
    x,a(16,:),'-p', x,a(17,:),'-*', x,a(18,:),'-o',  'LineWidth',width);
grid on
ave = roundn(mean(a,2),-4);
for m=1:18
    str3(m)=strcat(met(m), ':', {32}, num2str(ave(m),'%.4f'));
end
legend3=legend({str3(1),str3(2),str3(3),str3(4),str3(5),...
    str3(6),str3(7),str3(8),str3(9),str3(10),str3(11),...
    str3(12),str3(13),str3(14),str3(15),...
    str3(16),str3(17),str3(18)},'Location','SouthEastOutside');
set(legend3,'FontSize',8);
axis square
set(gca,'linewidth',1.2);
title('$Q_G$','Interpreter','latex','FontSize',20);
saveas(gcf,'grayscale\QG','epsc');

%% QP----------------------------------------------------------
for i=1:10
a(:,i)=Q(:,4,i);
end
figure,plot(x,a(1,:),'-*', x,a(2,:),'-o', x,a(3,:),'-s', x,a(4,:),'-d', x,a(5,:),'-x',...
    x,a(6,:),'-v', x,a(7,:),'-h', x,a(8,:),'-p', x,a(9,:),'-*', x,a(10,:),'-o',...
    x,a(11,:),'-s', x,a(12,:),'-d', x,a(13,:),'-x', x,a(14,:),'-v', x,a(15,:),'-h',...
    x,a(16,:),'-p', x,a(17,:),'-*', x,a(18,:),'-o',  'LineWidth',width);
grid on
ave = roundn(mean(a,2),-4);
for m=1:18
    str4(m)=strcat(met(m), ':', {32}, num2str(ave(m),'%.4f'));
end
legend4=legend({str4(1),str4(2),str4(3),str4(4),str4(5),...
    str4(6),str4(7),str4(8),str4(9),str4(10),str4(11),...
    str4(12),str4(13),str4(14),str4(15),...
    str4(16),str4(17),str4(18)},'Location','SouthEastOutside');
set(legend4,'FontSize',8);
axis square
set(gca,'linewidth',1.2);
title('$Q_P$','Interpreter','latex','FontSize',20);
saveas(gcf,'grayscale\QP','epsc');

%% QE----------------------------------------------------------
for i=1:10
a(:,i)=Q(:,5,i);
end
figure,plot(x,a(1,:),'-*', x,a(2,:),'-o', x,a(3,:),'-s', x,a(4,:),'-d', x,a(5,:),'-x',...
    x,a(6,:),'-v', x,a(7,:),'-h', x,a(8,:),'-p', x,a(9,:),'-*', x,a(10,:),'-o',...
    x,a(11,:),'-s', x,a(12,:),'-d', x,a(13,:),'-x', x,a(14,:),'-v', x,a(15,:),'-h',...
    x,a(16,:),'-p', x,a(17,:),'-*', x,a(18,:),'-o',  'LineWidth',width);
grid on
ave = roundn(mean(a,2),-4);
for m=1:18
    str5(m)=strcat(met(m), ':', {32}, num2str(ave(m),'%.4f'));
end
legend5=legend({str5(1),str5(2),str5(3),str5(4),str5(5),...
    str5(6),str5(7),str5(8),str5(9),str5(10),str5(11),...
    str5(12),str5(13),str5(14),str5(15),...
    str5(16),str5(17),str5(18)},'Location','SouthEastOutside');
set(legend5,'FontSize',8);
axis square
set(gca,'linewidth',1.2);
title('$Q_E$','Interpreter','latex','FontSize',20);
saveas(gcf,'grayscale\QE','epsc');

%% QY----------------------------------------------------------
for i=1:10
a(:,i)=Q(:,6,i);
end
figure,plot(x,a(1,:),'-*', x,a(2,:),'-o', x,a(3,:),'-s', x,a(4,:),'-d', x,a(5,:),'-x',...
    x,a(6,:),'-v', x,a(7,:),'-h', x,a(8,:),'-p', x,a(9,:),'-*', x,a(10,:),'-o',...
    x,a(11,:),'-s', x,a(12,:),'-d', x,a(13,:),'-x', x,a(14,:),'-v', x,a(15,:),'-h',...
    x,a(16,:),'-p', x,a(17,:),'-*', x,a(18,:),'-o',  'LineWidth',width);
grid on
ave = roundn(mean(a,2),-4);
for m=1:18
    str6(m)=strcat(met(m), ':', {32}, num2str(ave(m),'%.4f'));
end
legend6=legend({str6(1),str6(2),str6(3),str6(4),str6(5),...
    str6(6),str6(7),str6(8),str6(9),str6(10),str6(11),...
    str6(12),str6(13),str6(14),str6(15),...
    str6(16),str6(17),str6(18)},'Location','SouthEastOutside');
set(legend6,'FontSize',8);
axis square
set(gca,'linewidth',1.2);
title('$Q_Y$','Interpreter','latex','FontSize',20);
saveas(gcf,'grayscale\QY','epsc');

%% QCB----------------------------------------------------------
for i=1:10
a(:,i)=Q(:,7,i);
end
figure,plot(x,a(1,:),'-*', x,a(2,:),'-o', x,a(3,:),'-s', x,a(4,:),'-d', x,a(5,:),'-x',...
    x,a(6,:),'-v', x,a(7,:),'-h', x,a(8,:),'-p', x,a(9,:),'-*', x,a(10,:),'-o',...
    x,a(11,:),'-s', x,a(12,:),'-d', x,a(13,:),'-x', x,a(14,:),'-v', x,a(15,:),'-h',...
    x,a(16,:),'-p', x,a(17,:),'-*', x,a(18,:),'-o',  'LineWidth',width);
grid on
ave = roundn(mean(a,2),-4);
for m=1:18
    str7(m)=strcat(met(m), ':', {32}, num2str(ave(m),'%.4f'));
end
legend7=legend({str7(1),str7(2),str7(3),str7(4),str7(5),...
    str7(6),str7(7),str7(8),str7(9),str7(10),str7(11),...
    str7(12),str7(13),str7(14),str7(15),...
    str7(16),str7(17),str7(18)},'Location','SouthEastOutside');
set(legend7,'FontSize',8);
axis square
set(gca,'linewidth',1.2);
title('$Q_{CB}$','Interpreter','latex','FontSize',20);
saveas(gcf,'grayscale\QCB','epsc');

%% QCV----------------------------------------------------------
for i=1:10
a(:,i)=-Q(:,8,i);
end
figure,plot(x,a(1,:),'-*', x,a(2,:),'-o', x,a(3,:),'-s', x,a(4,:),'-d', x,a(5,:),'-x',...
    x,a(6,:),'-v', x,a(7,:),'-h', x,a(8,:),'-p', x,a(9,:),'-*', x,a(10,:),'-o',...
    x,a(11,:),'-s', x,a(12,:),'-d', x,a(13,:),'-x', x,a(14,:),'-v', x,a(15,:),'-h',...
    x,a(16,:),'-p', x,a(17,:),'-*', x,a(18,:),'-o',  'LineWidth',width);
grid on
ave = roundn(mean(a,2),-4);
for m=1:18
    str8(m)=strcat(met(m), ':', {32}, num2str(ave(m),'%.4f'));
end
legend8=legend({str8(1),str8(2),str8(3),str8(4),str8(5),...
    str8(6),str8(7),str8(8),str8(9),str8(10),str8(11),...
    str8(12),str8(13),str8(14),str8(15),...
    str8(16),str8(17),str8(18)},'Location','SouthEastOutside');
set(legend8,'FontSize',8);
axis square
set(gca,'linewidth',1.2);
title('$-Q_{CV}$','Interpreter','latex','FontSize',20);
saveas(gcf,'grayscale\QCV','epsc');