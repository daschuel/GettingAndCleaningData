# Code Book for Cleaned UCI HAR Dataset
## Final Project for Getting and Cleaning Data
## David Schueler
## 4/26/2015

The variables used in the data set are as below.
Subjects are numbered 1 to 30.
Activities are self-explanatory, transformed from numbers by the analysis script
(run_analysis.R).
They were obtained from the larger UCI data set by extracting
only those mentioning mean or std. Further, for each variable,
only the mean value for each pair of subject and activity 
(first two columns of the file means_by_subject_and_activity.txt)
 is reported.

## The variables have 6 distinguishing features:
* Body vs. Gravity:
    * Those variables mentioning Gravity are measures of the force of gravity at
    a given time, while those mentioning Body measure the movement of the person's own body.
* Acceleration vs. Gyro:
    * Those variables mentioning Acceleration were measured using the accelerometer,
    while those mentioning Gyro were measured using the gyroscope.
* Jerk vs. absence:
    * Those variables mentioning Jerk represent further calculations on those without
    to calculate Jerk signals.
* Magnitude vs. X, Y, or Z axis:
    * Those variables mentioning Magnitude result from calculating the Euclidean norm of the
    three dimensional axes (see below)>
    * Those variables mentioning X-, Y-, or Z-axis represent motion in one of those three dimensions.
* FFT vs. absence:
    * Those variables mentioning FFT were derived from the application of a Fast-Fourier Transform
    of the respective alternate variables.
* Mean vs. std
    * As discussed, only the mean and standard deviation (std) for each variable were reported.



* Subject
* Activity
* Body Acceleration X-axis mean
* Body Acceleration Y-axis mean
* Body Acceleration Z-axis mean
* Body Acceleration X-axis std
* Body Acceleration Y-axis std
* Body Acceleration Z-axis std
* Gravity Acceleration X-axis mean
* Gravity Acceleration Y-axis mean
* Gravity Acceleration Z-axis mean
* Gravity Acceleration X-axis std
* Gravity Acceleration Y-axis std
* Gravity Acceleration Z-axis std
* Body Acceleration Jerk X-axis mean
* Body Acceleration Jerk Y-axis mean
* Body Acceleration Jerk Z-axis mean
* Body Acceleration Jerk X-axis std
* Body Acceleration Jerk Y-axis std
* Body Acceleration Jerk Z-axis std
* Body Gyro X-axis mean
* Body Gyro Y-axis mean
* Body Gyro Z-axis mean
* Body Gyro X-axis std
* Body Gyro Y-axis std
* Body Gyro Z-axis std
* Body Gyro Jerk X-axis mean
* Body Gyro Jerk Y-axis mean
* Body Gyro Jerk Z-axis mean
* Body Gyro Jerk X-axis std
* Body Gyro Jerk Y-axis std
* Body Gyro Jerk Z-axis std
* Body Acceleration Magnitude mean
* Body Acceleration Magnitude std
* Gravity Acceleration Magnitude mean
* Gravity Acceleration Magnitude std
* Body Acceleration Jerk Magnitude mean
* Body Acceleration Jerk Magnitude std
* Body Gyro Magnitude mean
* Body Gyro Magnitude std
* Body Gyro Jerk Magnitude mean
* Body Gyro Jerk Magnitude std
* Body Acceleration X-axis FFT mean
* Body Acceleration Y-axis FFT mean
* Body Acceleration Z-axis FFT mean
* Body Acceleration X-axis FFT std
* Body Acceleration Y-axis FFT std
* Body Acceleration Z-axis FFT std
* Body Acceleration Freq X-axis FFT mean
* Body Acceleration Freq Y-axis FFT mean
* Body Acceleration Freq Z-axis FFT mean
* Body Acceleration Jerk X-axis FFT mean
* Body Acceleration Jerk Y-axis FFT mean
* Body Acceleration Jerk Z-axis FFT mean
* Body Acceleration Jerk X-axis FFT std
* Body Acceleration Jerk Y-axis FFT std
* Body Acceleration Jerk Z-axis FFT std
* Body Acceleration Jerk Freq X-axis FFT mean
* Body Acceleration Jerk Freq Y-axis FFT mean
* Body Acceleration Jerk Freq Z-axis FFT mean
* Body Gyro X-axis FFT mean
* Body Gyro Y-axis FFT mean
* Body Gyro Z-axis FFT mean
* Body Gyro X-axis FFT std
* Body Gyro Y-axis FFT std
* Body Gyro Z-axis FFT std
* Body Gyro Freq X-axis FFT mean
* Body Gyro Freq Y-axis FFT mean
* Body Gyro Freq Z-axis FFT mean
* Body Acceleration Magnitude FFT mean
* Body Acceleration Magnitude FFT std
* Body Acceleration Magnitude Freq FFT mean
* Body Acceleration Jerk Magnitude FFT mean
* Body Acceleration Jerk Magnitude FFT std
* Body Acceleration Jerk Magnitude Freq FFT mean
* Body Gyro Magnitude FFT mean
* Body Gyro Magnitude FFT std
* Body Gyro Magnitude Freq FFT mean
* Body Gyro Jerk Magnitude FFT mean
* Body Gyro Jerk Magnitude FFT std
* Body Gyro Jerk Magnitude Freq FFT mean
