clear all;
close all;
%clc;
addpath(genpath('objective_metrics'));

num_alg=18;
num_metric=8;
num_img=10;
Q=zeros(num_alg,num_metric,num_img);

for kk=1:num_img
disp(kk)
k=mod(kk,10);
h=floor(kk/10);

name1=['../sourceimages/grayscale/g_' num2str(h) num2str(k) '_1.tif'];
name2=['../sourceimages/grayscale/g_' num2str(h) num2str(k) '_2.tif'];
namef=cell(1,num_alg);


namef{1}=['../Results/grayscale/g_' num2str(h) num2str(k) '_dwt.tif'];
namef{2}=['../Results/grayscale/g_' num2str(h) num2str(k) '_dtcwt.tif'];
namef{3}=['../Results/grayscale/g_' num2str(h) num2str(k) '_nsct.tif'];
namef{4}=['../Results/grayscale/g_' num2str(h) num2str(k) '_gff.tif'];
namef{5}=['../Results/grayscale/g_' num2str(h) num2str(k) '_sr.tif'];
namef{6}=['../Results/grayscale/g_' num2str(h) num2str(k) '_asr.tif'];
namef{7}=['../Results/grayscale/g_' num2str(h) num2str(k) '_mwgf.tif'];
namef{8}=['../Results/grayscale/g_' num2str(h) num2str(k) '_ica.tif'];
namef{9}=['../Results/grayscale/g_' num2str(h) num2str(k) '_nsct-sr.tif'];
namef{10}=['../Results/grayscale/g_' num2str(h) num2str(k) '_sssdi.tif'];
namef{11}=['../Results/grayscale/g_' num2str(h) num2str(k) '_quadtree.tif'];
namef{12}=['../Results/grayscale/g_' num2str(h) num2str(k) '_dsift.tif'];
namef{13}=['../Results/grayscale/g_' num2str(h) num2str(k) '_srcf.tif'];
namef{14}=['../Results/grayscale/g_' num2str(h) num2str(k) '_gfdf.tif'];
namef{15}=['../Results/grayscale/g_' num2str(h) num2str(k) '_brw.tif'];
namef{16}=['../Results/grayscale/g_' num2str(h) num2str(k) '_misf.tif'];
namef{17}=['../Results/grayscale/g_' num2str(h) num2str(k) '_cnn.tif'];
namef{18}=['../Results/grayscale/g_' num2str(h) num2str(k) '_madcnn.tif'];


for i=1:num_alg

A=imread(name1);B=imread(name2);
F=imread(namef{i});

if size(A,3)>1
   A=rgb2gray(A);B=rgb2gray(B);F=rgb2gray(F); 
end
img1=double(A);img2=double(B);imgf=double(F);
%[H W]=size(img1);I=zeros(H,W,2);I(:,:,1)=img1;I(:,:,2)=img2;

% %
Q(i,1,kk)=metricMI(img1,img2,imgf,1);
Q(i,2,kk)=metricWang(img1,img2,imgf);
Q(i,3,kk)=metricXydeas(img1,img2,imgf);
Q(i,4,kk)=metricZhao(img1,img2,imgf);
Q(i,5,kk)=metricPeilla(img1,img2,imgf,3);  %
Q(i,6,kk)=metricYang(img1,img2,imgf);
Q(i,7,kk)=metricChenBlum(img1,img2,imgf); 
Q(i,8,kk)=metricChen(img1,img2,imgf);   %

end
end


save Q_grayscale Q

Q_ave=sum(Q,3)/num_img
%xlswrite('grayscale.xlsx',Q_ave);