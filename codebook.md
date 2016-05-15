# Getting and Cleaning Data
## Code Book
The independent tidy data set [q5Data.txt](https://github.com/balapad/GCDProject/blob/master/q5Data.txt) can be read into R using the command:

> read.table("q5Data.txt",header=TRUE)

## Overview
The [q5Data.txt](https://github.com/balapad/GCDProject/blob/master/q5Data.txt) has been obtained by processing the data provided in the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The tidy data set [q5Data.txt](https://github.com/balapad/GCDProject/blob/master/q5Data.txt) is obtained by merging the training and test data sets.  The data set has been transformed by extracting the measurements on the mean and standard deviation for each measurement. The data is further reduced by averaging of each variable for each activity and each subject.  The R script [run_analysis.R](https://github.com/balapad/GCDProject/blob/master/run_analysis.R) is used in the transformation.  A description of [run_analysis.R](https://github.com/balapad/GCDProject/blob/master/run_analysis.R) can be found in  [Readme.md](https://github.com/balapad/GCDProject/blob/master/Readme.md).

## Data Header Description
The variables in [q5Data.txt](https://github.com/balapad/GCDProject/blob/master/q5Data.txt) are as follows:

 1. subjects - identifier for the subjects
 2. activity - identifier for the activity
 3. timebodyacceleration.mean.x     - The mean of the body acceleration in X direction in time domain
 4. timebodyacceleration.mean.y     - The mean of the body acceleration in Y direction in time domain
 5. timebodyacceleration.mean.z     - The mean of the body acceleration in Z direction in time domain
 6. timegravityacceleration.mean.x  - The mean of the gravitational acceleration in X direction in time domain
 7. timegravityacceleration.mean.y  - The mean of the gravitational acceleration in Y direction in time domain
 8. timegravityacceleration.mean.z  - The mean of the gravitational acceleration in Z direction in time domain
 9. timebodyaccelerationjerk.mean.x - The mean of the jerk of the body acceleration in X direction in time domain
10. timebodyaccelerationjerk.mean.y - The mean of the jerk of the body acceleration in Y direction in time domain
11. timebodyaccelerationjerk.mean.z - The mean of the jerk of the body acceleration in Z direction in time domain
12. timebodygyro.mean.x             - The mean of the gyro measurement in X direction in time domain
13. timebodygyro.mean.y             - The mean of the gyro measurement in Y direction in time domain
14. timebodygyro.mean.z             - The mean of the gyro measurement in Z direction in time domain
15. timebodygyrojerk.mean.x         - The mean of the jerk of the gyro measurement in X direction in time domain
16. timebodygyrojerk.mean.y         - The mean of the jerk of the gyro measurement in Y direction in time domain
17. timebodygyrojerk.mean.z         - The mean of the jerk of the gyro measurement in Y direction in time domain
18. timebodyaccelerationmagnitude.mean     - The mean of the body acceleration magnitude in time domain
19. timegravityaccelerationmagnitude.mean  - The mean of the gravity acceleration magnitude in time domain
20. timebodyaccelerationjerkmagnitude.mean - The mean of jerk of the body accelartion magnitude in time domain
21. timebodygyromagnitude.mean             - The mean of the gyro measurement magnitude in time domain
22. timebodygyrojerkmagnitude.mean         - The mean of jerk of the gyro measurement magnitude in time domain
23. freqbodyacceleration.mean.x     - The mean of the body acceleration in X direction in frequency domain
24. freqbodyacceleration.mean.y     - The mean of the body acceleration in Y direction in frequency domain
25. freqbodyacceleration.mean.z     - The mean of the body acceleration in Z direction in frequency domain
26. freqbodyacceleration.meanfreq.x  - The mean frequency component of the body acceleration in x direction in frequency domain
27. freqbodyacceleration.meanfreq.y  - The mean frequency component of the body acceleration in y direction in frequency domain
28. freqbodyacceleration.meanfreq.z  - The mean frequency component of the body acceleration in z direction in frequency domain
29. freqbodyaccelerationjerk.mean.x  - The mean of the jerk of the body acceleration in X direction in frequency domain
30. freqbodyaccelerationjerk.mean.y  - The mean of the jerk of the body acceleration in Y direction in frequency domain
31. freqbodyaccelerationjerk.mean.z  - The mean of the jerk of the body acceleration in Z direction in frequency domain
32. freqbodyaccelerationjerk.meanfreq.x - The mean frequency component of the body acceleration in x direction in frequency domain
33. freqbodyaccelerationjerk.meanfreq.y - The mean frequency component of the body acceleration in y direction in frequency domain
34. freqbodyaccelerationjerk.meanfreq.z - The mean frequency component of the body acceleration in z direction in frequency domain
35. freqbodygyro.mean.x                 - The mean of the gyro measurement in X direction in frequency domain
36. freqbodygyro.mean.y                 - The mean of the gyro measurement in Y direction in frequency domain
37. freqbodygyro.mean.z                 - The mean of the gyro measurement in Z direction in frequency domain
38. freqbodygyro.meanfreq.x             - The mean frequency component of the gyro measurement in x direction in frequency domain
39. freqbodygyro.meanfreq.y             - The mean frequency component of the gyro measurement in y direction in frequency domain
40. freqbodygyro.meanfreq.z             - The mean frequency component of the gyro measurement in z direction in frequency domain
41. freqbodyaccelerationmagnitude.mean          - The mean of the body acceleration magnitude in frequency domain
42. freqbodyaccelerationmagnitude.meanfreq	- The mean frequency component of the body accelaration magnitude in frequency domain
43. freqbodyaccelerationjerkmagnitude.mean	- The mean of jerk of the body accelartion magnitude in frequency domain
44. freqbodyaccelerationjerkmagnitude.meanfreq	- The mean frequency component jerk of the body accelaration magnitude in frequency domain
45. freqbodygyromagnitude.mean			- The mean of the gyro measurement magnitude in time domain
46. freqbodygyromagnitude.meanfreq              - The mean frequency component of the body accelaration magnitude in frequency domain
47. freqbodygyrojerkmagnitude.mean              - The mean of jerk of the gyro measurement magnitude in time domain
48. freqbodygyrojerkmagnitude.meanfreq          - The mean frequency component of the jerk of gyro measurement magnitude in frequency domain
49. angle.timebodyaccelerationmean.gravity.     - Angle between body acceleration and gravity
50. angle.timebodyaccelerationjerkmeangravitymean. - Angle between body acceleration jerk and gravity
51. angle.timebodygyromean.gravitymean.            - Angle between gyro and and gravity
52. angle.timebodygyrojerkmean.gravitymean.        - Angle between gyro jerk and gravity
53. angle.x.gravitymean.                           - Angle between X and gravity
54. angle.y.gravitymean.                           - Angle between Y and gravity
55. angle.z.gravitymean.                           - Angle between X and gravity
56. timebodyacceleration.std.x       - The standard deviation of the body acceleration in X direction in time domain
57. timebodyacceleration.std.y	     - The standard deviation of the body acceleration in Y direction in time domain
58. timebodyacceleration.std.z	     - The standard deviation of the body acceleration in Z direction in time domain
59. timegravityacceleration.std.x    - The standard deviation of the gravitational acceleration in X direction in time domain
60. timegravityacceleration.std.y    - The standard deviation of the gravitational acceleration in Y direction in time domain
61. timegravityacceleration.std.z    - The standard deviation of the gravitational acceleration in Z direction in time domain
62. timebodyaccelerationjerk.std.x   - The standard deviation  of the jerk of the body acceleration in X direction in time domain
63. timebodyaccelerationjerk.std.y   - The standard deviation  of the jerk of the body acceleration in Y direction in time domain
64. timebodyaccelerationjerk.std.z   - The standard deviation  of the jerk of the body acceleration in Z direction in time domain
65. timebodygyro.std.x               - The standard deviation  of the gyro measurement in X direction in time domain
66. timebodygyro.std.y		     - The standard deviation  of the gyro measurement in Y direction in time domain
67. timebodygyro.std.z		     - The standard deviation  of the gyro measurement in Z direction in time domain
68. timebodygyrojerk.std.x           - The standard deviation  of the jerk of the gyro measurement in X direction in time domain
69. timebodygyrojerk.std.y	     - The standard deviation  of the jerk of the gyro measurement in Y direction in time domain
70. timebodygyrojerk.std.z	     - The standard deviation  of the jerk of the gyro measurement in Y direction in time domain
71. timebodyaccelerationmagnitude.std     - The standard deviation of the body acceleration magnitude in time domain
72. timegravityaccelerationmagnitude.std  - The standard deviation of the gravity acceleration magnitude in time domain
73. timebodyaccelerationjerkmagnitude.std - The standard deviation of jerk of the body accelartion magnitude in time domain
74. timebodygyromagnitude.std		  - The standard deviation of the gyro measurement magnitude in time domain
75. timebodygyrojerkmagnitude.std	  - The standard deviation of jerk of the gyro measurement magnitude in time domain
76. freqbodyacceleration.std.x            - The standard deviation of the body acceleration in X direction in frequency domain
77. freqbodyacceleration.std.y		  - The standard deviation of the body acceleration in Y direction in frequency domain
78. freqbodyacceleration.std.z		  - The standard deviation of the body acceleration in Z direction in frequency domain
79. freqbodyaccelerationjerk.std.x        - The standard deviation of the jerk of the body acceleration in X direction in frequency domain
80. freqbodyaccelerationjerk.std.y	  - The standard deviation of the jerk of the body acceleration in Y direction in frequency domain
81. freqbodyaccelerationjerk.std.z	  - The standard deviation of the jerk of the body acceleration in Z direction in frequency domain
82. freqbodygyro.std.x                    - The standard deviation of the gyro measurement in X direction in frequency domain
83. freqbodygyro.std.y			  - The standard deviation of the gyro measurement in Y direction in frequency domain
84. freqbodygyro.std.z			  - The standard deviation of the gyro measurement in Z direction in frequency domain
85. freqbodyaccelerationmagnitude.std     - The standard deviation of the body acceleration magnitude in frequency domain
86. freqbodyaccelerationjerkmagnitude.std - The standard deviation of jerk of the body accelartion magnitude in frequency domain
87. freqbodygyromagnitude.std             - The standard deviation of the gyro measurement magnitude in time domain
88. freqbodygyrojerkmagnitude.std         - The standard deviation of jerk of the gyro measurement magnitude in time domain




