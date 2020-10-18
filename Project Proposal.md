# 38.  Stereo Panorama Generation
### Link to Github repository : https://github.com/Digital-Image-Processing-IIITH/project-sky_hawkers                     
# TEAM MEMBERS
- Abhishek Shah
- Mrinal Khubchandani
- Sai Tanmay Reddy Chakkera
- Tirth Upadhyaya

# OVERVIEW/PROBLEM DEFINITION
The main problem aim of this project is to create depth perception from a given normal monocular panorama which has only a single viewpoint. To do this we take two images for each frame, one image corresponding to how the left eye will perceive that frame and the second image corresponds to how the right eye will perceive that frame as two perspectives are necessary for depth perception. Depth perception is an extremely important and an integral part of all virtual reality (VR) devices whose demand is gearing up in recent years. Along with depth perception , a complete 360° view is also necessary in VR devices, as a user can rotate their head to see around them, and hence a stereo panorama is required.

# MAIN GOALS
The main goals of this project are:
- Creating a stereo image given images frames corresponding to left and right eye
- Creating a stereo panorama by stitching the stereo images and adding automatic disparity control

# RESULTS OF THE PROJECT
 To generate a final 360◦ stereo view from the images gathered after mosaicing the strips obtained from left and right side of each individual image and thereafter removing disparity from them by applying an automatic disparity control algorithm.

# PROJECT MILESTONES AND EXPECTED TIMELINES
- 1st milestone
-- Creating the dataset is a bit difficult and will take substantial time. Also the accuracy with which the dataset needs to be taken matters a lot so we will try to allocate the first couple of days for generating the dataset.
- 2nd milestone
-- We will implement the disparity control algorithm.
- 3rd milestone
-- We will merge all the images obtained after applying disparity control algorithm to form a panorama.
- 4th milestone
-- We will complete the coding part and present the final output we obtained after running the code on the input.

# DATASET REQUIREMENT
Dataset for this project requires a video covering 360 degree view taken at a constant angular speed and in a fixed horizontal plane.  This task is difficult without proper equipment. For this reason, we are going to try 2 approaches. Our first option is to try and take video without any equipment or household equipment successfully. Otherwise, we plan on taking several images to cover a 360 degree plane and combining them to create a panoramic image which will serve the same function as video in a heuristic fashion. This method will be our second option.