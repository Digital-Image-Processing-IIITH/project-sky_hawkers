%% Recalculation of left and right eye strip positions for improved depth perception taking left image as the reference
strip_width=1;
%% Enter Num_Im as number of images, dir_name as directory name
Im_width=strip_width*(Num_Im);
[r2,c2,ch]=size(imread(strcat(dir_name,src_db(10).name)));
Image_centre=round(c2/2);

right_strip_pos=round(Image_centre+strip_gap./2); % for left eye images (as calculated with left image being reference)

left_strip_pos=zeros(1,length(strip_gap));
left_strip_pos(1:shift_x)=round(Im_centre-strip_gap(end-shift_x+1:end)./2);
left_strip_pos(shift_x+1:end)=round(Im_centre-strip_gap(1:end-shift_x)./2);
