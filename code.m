% This code takes images as input and extract strips and concatenates them to form output_imagess

directory = 'Final_DIP_Dataset/';
lst = dir(directory);

strip_width=4;
any_img = strcat(directory,lst(5).name);
[row,col,ht]=size(imread(any_img));

Img_width=strip_width*(length(lst)-2);

Img_r_eye=zeros(row,Img_width,3);
Img_l_eye=zeros(row,Img_width,3);

if mod(col,2)==0
    temp = col/2;
else
    temp = (col+1)/2;
end

ls_position=temp+40;
rs_position=temp-40;

tic
dir_len = length(lst);

for id = 3:dir_len
    Im_DB = imread(strcat(directory,lst(id).name)); 
    
    start=(id-3)*strip_width + 1;
    last=(id-2)*strip_width;

    temp_value = Im_DB(:,rs_position+1:rs_position+strip_width,:);
    Img_l_eye(:,start:last,:)=double(temp_value); % concatenates strips for the left eye

    temp_value = Im_DB(:,ls_position+1:ls_position+strip_width,:);
    Img_r_eye(:,start:last,:)=double(temp_value); % concatenates strips for the right eye
end
toc

%% Storing the output_imagess created by joining left strips and right strips individually
figure,imshow(uint8(Img_l_eye))
imwrite(uint8(Img_l_eye),strcat('output_images/','left_eye_Im.jpg'));

figure, imshow(uint8(Img_r_eye))
imwrite(uint8(Img_r_eye),strcat('output_images/','right_eye_Im.jpg'));

%% algining of data with 0 disparity at infinity

img1 = strcat('output_images/','left_eye_Im.jpg');
img2 = strcat('output_images/','right_eye_Im.jpg');

Img_1=imread(img1);
Img_2=imread(img2);

Im_1gr=double(rgb2gray(Img_1));
Im_2gr=double(rgb2gray(Img_2));


% Image region with 0 disparity. Entering value of pos1,pos2 manually

pos1=294; 
pos2=301;
diff=pos2-pos1;
Im_1_cut=Im_1gr(:,pos1:pos2);

sz = size(Im_2gr,2);
sz = sz-diff;
for id=1:sz
    Im_2_temp=Im_2gr(:,id:id+diff);
    Im_2_temp=Im_2_temp-Im_1_cut;
    tmp = var(Im_2_temp(:));    
    vr(id)=tmp;
end

[val,x_cor]=sort(vr);

if x_cor(1)-pos1>=0
    shift_x = x_cor(1)-pos1;
else
    shift_x = pos1-x_cor(1);
end

Im_2_align=zeros(size(Img_2));
Im_2_align(:,shift_x+1:end,:) = double(Img_2(:,1:end-shift_x,:)); % Aligned right eye output_images to have vergence at infinity


%% Creating output images with convergence at infinity from previous images

[num_row,num_col,ht]=size(Img_2);
Img_r_eye_inf=Im_2_align(:,shift_x+1:end,:);
%imshow(uint8(Im_right_eye))
Img_l_eye_inf=Img_1(:,1:end-shift_x,:);
imwrite(uint8(Img_l_eye_inf),'left_eye_inf.jpg'); 
imwrite(uint8(Img_r_eye_inf),'right_eye_inf.jpg');
%imshow(Im_left_eye-uint8(Im_right_eye))