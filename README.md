# 38.  Stereo Panorama Generation

# TEAM MEMBERS:
- Abhishek Shah
- Mrinal Khubchandani
- Sai Tanmay Reddy Chakkera
- Tirth Upadhyaya

# Goal of the project:
The goal of this project is to output stereo panorama given a dataset of images.

# Setting up the code:
 - Upload this project to matlab.mathworks.com or install matlab in your system and make sure you have computer vision library.
 - Make a new folder names input_images and add your dataset images to the input_images folder.
 - Run code.m from src folder

# Sample Input
This is a dataset consisting of 2000 images of 1920 x 1280 resolution:
https://drive.google.com/file/d/1ZKscDlR1XLFVLclyPjea4DyAQfcGbsuf/view?usp=drivesdk

For a smaller dataset of 440 images of 960 x 640 resolution:
https://drive.google.com/file/d/1jPe4jkZSq4YttuaZ2UInS0iPoSm3mO2n/view?usp=sharing

# Sample Output
The output images corresponding to the 440 images dataset can be found out_images/ folder

# Cases where code does not work
If the input dataset is of less than 50 images , the stereo images will not be properly made because we take window size as 50
