clc
clear
close all
%% initialize 
dims = [256, 256];%ky  kz
accel = [2, 2]; 
ETL = 128;

%% sampling mask
sp_mask = zeros(dims);
sp_mask(1:accel(1):end,1:accel(2):end) = 1;
[ZZ, YY] = meshgrid(linspace(-1, 1, dims(2)),linspace(-1, 1, dims(1)));
R = sqrt((ZZ/1).^2+(YY/1).^2);
sp_mask(R>1.01) = 0; 

%% generate view ordering
angleincrement = 2*pi/1.618; %golden angle
view_order = gen_gavot_order(sp_mask,ETL,angleincrement);

%% show view ordering
map = viewordermap('MPL_rainbow_VO');
% for colormap black (0 in colorbar) is the background
figure('WindowState','maximized')
subplot(131),imshow(view_order(:,:,1),[]),colormap(map),colorbar,title('the view-ordering of #1 shot')
axis xy;xlabel kz;ylabel ky;set(gca,'FontSize',15)
subplot(132),imshow(view_order(:,:,30),[]),colormap(map),colorbar,title('the view-ordering of #30 shot')
axis xy;xlabel kz;ylabel ky;set(gca,'FontSize',15)
subplot(133),imshow(view_order(:,:,60),[]),colormap(map),colorbar,title('the view-ordering of #60 shot')
axis xy;xlabel kz;ylabel ky;set(gca,'FontSize',15)

figure('WindowState','maximized')
subplot(121),imshow(sum(view_order,3),[]),colormap(map),colorbar,title('the view-ordering consisting of all shots')
axis xy;xlabel kz;ylabel ky,set(gca,'FontSize',15)
subplot(122),imshow(sum(view_order(:,:,1:30),3),[]),colormap(map),colorbar,title('the view-ordering consisting of 1-30 shots')
axis xy;xlabel kz;ylabel ky,set(gca,'FontSize',15)





