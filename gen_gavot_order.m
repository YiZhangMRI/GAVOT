function view_order = gen_gavot_order(mask,ETL,angleincrement)
% gen_gavot_order Generate Golden-Angle View-Ordeing
%
% Inputs:
%    mask -- sampling mask
%    ETL -- echo train length
%    angleincrement -- the increment between adjacent echo
%                       default: 2*pi/((sqrt(5)+1)/2)

%
% Outputs:
%    view_order [ny, nz, N] -- the view ordering of N shots
%
% Example:
%    mask = ones(256,256);
%    ETL = 128;
%    view_order = gen_gavot_order(mask,ETL);
%
% (c) Tao Zu, 2024

[ny, nz] = size(mask);
idx = find(mask == 1);
N = ceil(length(idx)/ETL);
[i, j] = ind2sub(size(mask), idx);


% normalization
centerm = floor(size(mask))/2+1;
y = (i-centerm(1))/ny; z = (j-centerm(2))/nz;

% polar coordinates
[t, r] = cart2pol(y,z);
[~, idx_r] = sort(r);
r_sort = r(idx_r);
t_sort = t(idx_r);

% Echo number assignment
lastdiff = mod_zero(length(idx),ETL);

display(['The discarded echoes in the last shot is ' num2str(ETL - lastdiff)]);

r_shape_copy1 = reshape(r_sort(1:N*lastdiff), N, lastdiff);
t_shape_copy1 = reshape(t_sort(1:N*lastdiff), N, lastdiff);

r_shape_copy2 = reshape(r_sort(N*lastdiff+1:end), N-1, ETL - lastdiff);
t_shape_copy2 = reshape(t_sort(N*lastdiff+1:end), N-1, ETL - lastdiff);
r_shape_copy2(N,:) = nan;
t_shape_copy2(N,:) = nan;

r_shape_copy = [r_shape_copy1 r_shape_copy2];
t_shape_copy = [t_shape_copy1 t_shape_copy2];

r_shape2 = zeros([N ETL]);
t_shape2 = zeros([N ETL]);

% Train number assignment
if nargin < 3
    angleincrement = 2*pi/((sqrt(5)+1)/2);% gama = (sqrt(5)+1)/2 is the golden ratio
end
base_angle = 0;

for iter_train = 1:N
    aflag = zeros(size(r_shape_copy));

    for iter_echo=1:ETL
        [~,index] = min(abs(t_shape_copy(:,iter_echo)-mod_angle(base_angle+(iter_echo-1)*angleincrement,2*pi)));
        r_shape2(iter_train,iter_echo) = r_shape_copy(index,iter_echo);
        t_shape2(iter_train,iter_echo) = t_shape_copy(index,iter_echo);
        aflag(index,iter_echo) = 1;
    end

    base_angle = base_angle+iter_train*angleincrement;

    % 
    r_shape_copy(find(aflag)) = [];
    t_shape_copy(find(aflag)) = [];
    r_shape_copy = reshape(r_shape_copy,[],ETL);
    t_shape_copy = reshape(t_shape_copy,[],ETL);
end

[y, z] = pol2cart(t_shape2, r_shape2);
y_echoes = round(y*ny);
z_echoes = round(z*nz);

if any((y_echoes+centerm(1)-ny)>0)
    error('exceed ny')
end

if any((z_echoes+centerm(2)-nz)>0)
    error('exceed nz')
end

% Build visual view ordering
view_order = zeros(ny,nz,N);

for i = 1:N
    for j =1:ETL
        if ~(isnan(y_echoes(i,j)) || isnan(z_echoes(i,j)))
            view_order(y_echoes(i,j)+centerm(1),z_echoes(i,j)+centerm(2),i) = j;
        end
    end
end

end

function output = mod_zero(input1,input2)

    output = mod(input1,input2);
    output(output==0) = input2;

end

function [output1] = mod_angle(input1,input2)

temp = mod(input1,input2);
if temp> input2/2
    output1 = temp-input2;
else
    output1 = temp;
end

end


