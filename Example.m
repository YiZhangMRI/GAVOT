clc
clear
close all
%% initialize 
dims = [100, 80];%ky  kz
accel = [2, 2]; 
ETL = 60;
sizeACS = [23 23];
%% sampling mask
sp_mask = zeros(dims);
sp_mask(1:accel(1):end,1:accel(2):end) = 1;
[ZZ, YY] = meshgrid(linspace(-1, 1, dims(2)),linspace(-1, 1, dims(1)));
R = sqrt((ZZ/1).^2+(YY/1).^2);
sp_mask(R>1.005) = 0; 

% ACS
cutacsflag = 1;

centerpe = floor(dims(1)/2)+1;
centerss = floor(dims(2)/2)+1;
acspelines = sizeACS(1); %
acsperange = (-ceil((acspelines-1)/2):ceil(acspelines/2)-1) + centerpe;
acssslines = sizeACS(2); %
acsssrange = (-ceil((acssslines-1)/2):ceil(acssslines/2)-1) + centerss; 

if cutacsflag == 0
    sp_mask(acsperange,acsssrange) = 1;
else  
    acs_mask = ones(sizeACS);
    [ZZ, YY] = meshgrid(linspace(-1, 1, sizeACS(1)),linspace(-1, 1, sizeACS(2)));
    R = sqrt((ZZ/1).^2+(YY/1).^2);
    acs_mask(R>0.93) = 0;
    sp_mask(acsperange,acsssrange) = sp_mask(acsperange,acsssrange) + acs_mask;
    sp_mask(sp_mask>1) = 1;
end

%% generate view ordering
angleincrement = 2*pi/1.618; %golden angle
view_order = gen_gavot_order(sp_mask,ETL,angleincrement);

%% show view ordering
map = viewordermap('MPL_rainbow_VO');% for colormap black (0 in colorbar) is the background
view_order_show = permute(view_order,[2 1 3]);%xlable ky ylable kz
figure('WindowState','maximized')
subplot(141),imshow(view_order_show(:,:,1),[]),colormap(map),colorbar,title('the view-ordering of #1 shot')
axis xy;xlabel ky;ylabel kz;
subplot(142),imshow(view_order_show(:,:,5),[]),colormap(map),colorbar,title('the view-ordering of #5 shot')
axis xy;xlabel ky;ylabel kz;
subplot(143),imshow(view_order_show(:,:,13),[]),colormap(map),colorbar,title('the view-ordering of #13 shot')
axis xy;xlabel ky;ylabel kz;
subplot(144),imshow(view_order_show(:,:,25),[]),colormap(map),colorbar,title('the view-ordering of #25 shot')
axis xy;xlabel ky;ylabel kz;

figure('WindowState','maximized')
subplot(121),imshow(sum(view_order_show,3),[]),colormap(map),colorbar,title('the view-ordering consisting of all shots')
axis xy;xlabel ky;ylabel kz
subplot(122),imshow(sum(view_order_show(:,:,1:13),3),[]),colormap(map),colorbar,title('the view-ordering consisting of 1-13 shots')
axis xy;xlabel ky;ylabel kz






