% This code takes images as input and extract strips and concatenates them to form panoramas

directory = 'Final_DIP_Dataset/';
lst = dir(directory);

strip_width=4;
any_img = strcat(directory,lst(5).name);
[row,col,ht]=size(imread(any_img));

Im_width=strip_width*(length(lst)-2);

Im_cmpnd_right_eye=zeros(row,Im_width,3);
Im_cmpnd_left_eye=zeros(row,Im_width,3);

if mod(col,2)==0
    temp = col/2
else
    temp = (col+1)/2
end

left_strip_pos=temp+40;
right_strip_pos=temp-40;

tic
dir_len = length(lst)

for id = 3:dir_len
    Im_DB = imread(strcat(directory,lst(id).name)); 
    
    start=(id-3)*strip_width + 1;
    last=(id-2)*strip_width;

    temp_value = Im_DB(:,right_strip_pos+1:right_strip_pos+strip_width,:);
    Im_cmpnd_left_eye(:,start:last,:)=double(temp_value); % concatenates strips for the left eye

    temp_value = Im_DB(:,left_strip_pos+1:left_strip_pos+strip_width,:);
    Im_cmpnd_right_eye(:,start:last,:)=double(temp_value); % concatenates strips for the right eye
end
toc

%% Storing the Panoramas created by joining left strips and right strips individually
figure,imshow(uint8(Im_cmpnd_left_eye))    
figure, imshow(uint8(Im_cmpnd_right_eye))

imwrite(uint8(Im_cmpnd_left_eye),strcat('output_images/','left_eye_Im.jpg'));
imwrite(uint8(Im_cmpnd_right_eye),strcat('output_images/','right_eye_Im.jpg'));
