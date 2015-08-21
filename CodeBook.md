# Codebook for the Programming Assignment

## Description of the dataset 

This dataset is based on a set of experiments that have
been carried out with a group of 30 volunteers within an age bracket of 19-48
years. Each person performed six activities (WALKING, WALKING_UPSTAIRS,
WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung
Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we
captured 3-axial linear acceleration and 3-axial angular velocity at a constant
rate of 50Hz. The experiments have been video-recorded to label the data
manually. The obtained dataset has been randomly partitioned into two sets,
where 70% of the volunteers was selected for generating the training data and
30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying
noise filters and then sampled in fixed-width sliding windows of 2.56 sec and
50% overlap (128 readings/window). The sensor acceleration signal, which has
gravitational and body motion components, was separated using a Butterworth
low-pass filter into body acceleration and gravity. The gravitational force is
assumed to have only low frequency components, therefore a filter with 0.3 Hz
cutoff frequency was used. From each window, a vector of features was obtained
by calculating variables from the time and frequency domain. 

All measures are normalized and bounded within [-1,1].

For further information on the experiments, see: 
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

## Variables

All variables in this dataset denote means across all the experiment runs for 
any given subject/activity pair.

*  subjectID   
 	 + Identifier of the subject who did the experiment
 	 range: 1 - 30  

*  activity   
 	 + Activity that the subject was performing  
        + WALKING  
 	    + WALKING_UPSTAIRS  
 	    + WALKING_DOWNSTAIRS  
 	    + SITTING  
 	    + STANDING  
 	    + LAYING 

*  treatment   
 	 + Treatment the subject was assigned to
 	    + train
 	    + test

*  tBody.Acceleration.mean.X   
 	 + Mean of the body acceleration time domain signals in the X dimension, captured at a constant rate of 50 Hz 


*  tBody.Acceleration.mean.Y   
 	 + Mean of the body acceleration time domain signals in the Y dimension, captured at a constant rate of 50 Hz

*  tBody.Acceleration.mean.Z   
 	 + Mean of the body acceleration time domain signals in the Z dimension, captured at a constant rate of 50 Hz 

*  tBody.Acceleration.std.X   
    + Standard deviation of the body acceleration time domain signals in the X dimension, captured at a constant rate of 50 Hz 

*  tBody.Acceleration.std.Y   
 	 + Standard deviation of the body acceleration time domain signals in the Y dimension, captured at a constant rate of 50 Hz 

*  tBody.Acceleration.std.Z   
 	 + Standard deviation of the body acceleration time domain signals in the Z dimension, captured at a constant rate of 50 Hz 

*  tGravity.Acceleration.mean.X   
 	 + Mean of the gravity acceleration time domain signals in the X dimension, captured at a constant rate of 50 Hz 

*  tGravity.Acceleration.mean.Y   
 	 + Mean of the gravity acceleration time domain signals in the Y dimension, captured at a constant rate of 50 Hz 

*  tGravity.Acceleration.mean.Z   
 	 + Mean of the gravity acceleration time domain signals in the Z dimension, captured at a constant rate of 50 Hz 

*  tGravity.Acceleration.std.X   
 	 + Standard deviation of the body acceleration time domain signals in the X dimension, captured at a constant rate of 50 Hz 

*  tGravity.Acceleration.std.Y   
 	 + Standard deviation of the body acceleration time domain signals in the Y dimension, captured at a constant rate of 50 Hz 

*  tGravity.Acceleration.std.Z   
 	 + Standard deviation of the body acceleration time domain signals in the Z dimension, captured at a constant rate of 50 Hz 

*  tBody.Acceleration.Jerk.mean.X   
 	 + Mean of the Jerk of the time domain signals of body acceleration in the X dimension, captured at a constant rate of 50 Hz 

*  tBody.Acceleration.Jerk.mean.Y   
 	 + Mean of the Jerk of the time domain signals of body acceleration in the Y dimension, captured at a constant rate of 50 Hz 

*  tBody.Acceleration.Jerk.mean.Z   
 	 + Mean of the Jerk of the time domain signals of body acceleration in the Z dimension, captured at a constant rate of 50 Hz 

*  tBody.Acceleration.Jerk.std.X   
 	 + Standard deviation of the Jerk of the time domain signals of body acceleration in the X dimension, captured at a constant rate of 50 Hz 

*  tBody.Acceleration.Jerk.std.Y   
 	 + Standard deviation of the Jerk of the time domain signals of body acceleration in the Y dimension, captured at a constant rate of 50 Hz 

*  tBody.Acceleration.Jerk.std.Z   
 	 + Standard deviation of the Jerk of the time domain signals of body acceleration in the Z dimension, captured at a constant rate of 50 Hz 

*  tBody.Gyroscope.mean.X   
 	 + Mean of the gyroscope time domain signals in the X dimension, captured at a constant rate of 50 Hz 

*  tBody.Gyroscope.mean.Y   
 	 + Mean of the gyroscope time domain signals in the Y dimension, captured at a constant rate of 50 Hz 

*  tBody.Gyroscope.mean.Z   
 	 + Mean of the gyroscope time domain signals in the Z dimension, captured at a constant rate of 50 Hz 

*  tBody.Gyroscope.std.X   
 	 + Standard deviation of the gyroscope time domain signals in the X dimension, captured at a constant rate of 50 Hz 

*  tBody.Gyroscope.std.Y   
 	 + Standard deviation of the gyroscope time domain signals in the Y dimension, captured at a constant rate of 50 Hz 

*  tBody.Gyroscope.std.Z   
 	 + Standard deviation of the gyroscope time domain signals in the Z dimension, captured at a constant rate of 50 Hz 

*  tBody.Gyroscope.Jerk.mean.X   
 	 + Mean of the Jerk of the time domain gyroscope signals in the X dimension, captured at a constant rate of 50 Hz 

*  tBody.Gyroscope.Jerk.mean.Y   
 	 + Mean of the Jerk of the time domain gyroscope signals in the Y dimension, captured at a constant rate of 50 Hz 

*  tBody.Gyroscope.Jerk.mean.Z   
 	 + Mean of the Jerk of the time domain gyroscope signals in the Z dimension, captured at a constant rate of 50 Hz 

*  tBody.Gyroscope.Jerk.std.X   
 	 + Standard deviation of the Jerk of the time domain gyroscope signals in the X dimension, captured at a constant rate of 50 Hz 

*  tBody.Gyroscope.Jerk.std.Y   
 	 + Standard deviation of the Jerk of the time domain gyroscope signals in the Y dimension, captured at a constant rate of 50 Hz 

*  tBody.Gyroscope.Jerk.std.Z   
 	 + Standard deviation of the Jerk of the time domain gyroscope signals in the Z dimension, captured at a constant rate of 50 Hz 

*  tBody.Acceleration.Mag.mean   
  	 + Mean of the magnitude of the time domain body acceleration signals, calculated using the Euclidean norm  

*  tBody.Acceleration.Mag.std   
  	 + Standard deviation of the magnitude of the time domain body acceleration signals, calculated using the Euclidean norm  

*  tGravity.Acceleration.Mag.mean   
  	 + Mean of the magnitude of the time domain gravity acceleration signals, calculated using the Euclidean norm  

*  tGravity.Acceleration.Mag.std   
  	 + Standard deviation of the magnitude of the time domain gravity acceleration signals, calculated using the Euclidean norm  

*  tBody.Acceleration.Jerk.Mag.mean   
  	 + Mean of the magnitude of the jerk of the time domain gravity acceleration signals, calculated using the Euclidean norm  

*  tBody.Acceleration.Jerk.Mag.std   
  	 + Standard deviation of the magnitude of the jerk of the time domain gravity acceleration signals, calculated using the Euclidean norm  

*  tBody.Gyroscope.Mag.mean   
  	 + Mean of the magnitude of the gyroscope time domain signals, calculated using the Euclidean norm  

*  tBody.Gyroscope.Mag.std   
  	 + Standard deviation of the magnitude of the gyroscope time domain signals, calculated using the Euclidean norm  

*  tBody.Gyroscope.Jerk.Mag.mean   
 	 + Mean of the magnitude of the  Jerk of the time domain gyroscope signals, calculated using the Euclidean norm  

*  tBody.Gyroscope.Jerk.Mag.std   
 	 + Standard deviation of the magnitude of the  Jerk of the time domain gyroscope signals in the X dimension, captured at a constant rate of 50 Hz 

*  fBody.Acceleration.mean.X   
 	 + Mean of the Fast Fourier Transform (FFT) of the body acceleration time domain signals in the X dimension

*  fBody.Acceleration.mean.Y   
 	 + Mean of the Fast Fourier Transform (FFT) of the body acceleration time domain signals in the Y dimension

*  fBody.Acceleration.mean.Z   
 	 + Mean of the Fast Fourier Transform (FFT) of the body acceleration time domain signals in the Z dimension

*  fBody.Acceleration.std.X   
 	 + Standard deviation of the Fast Fourier Transform (FFT) of the body acceleration time domain signals in the X dimension

*  fBody.Acceleration.std.Y   
 	 + Standard deviation of the Fast Fourier Transform (FFT) of the body acceleration time domain signals in the Y dimension

*  fBody.Acceleration.std.Z   
 	 + Standard deviation of the Fast Fourier Transform (FFT) of the body acceleration time domain signals in the Z dimension

*  fBody.Acceleration.Jerk.mean.X   
 	 + Mean of the Fast Fourier Transform (FFT) of the Jerk of the body acceleration time domain signals in the X dimension

*  fBody.Acceleration.Jerk.mean.Y   
 	 + Mean of the Fast Fourier Transform (FFT) of the Jerk of the body acceleration time domain signals in the Y dimension

*  fBody.Acceleration.Jerk.mean.Z   
 	 + Mean of the Fast Fourier Transform (FFT) of the Jerk of the body acceleration time domain signals in the Z dimension

*  fBody.Acceleration.Jerk.std.X   
 	 + Standard deviation of the Fast Fourier Transform (FFT) of the Jerk of the body acceleration time domain signals in the X dimension

*  fBody.Acceleration.Jerk.std.Y   
 	 + Standard deviation of the Fast Fourier Transform (FFT) of the Jerk of the body acceleration time domain signals in the Y dimension

*  fBody.Acceleration.Jerk.std.Z   
 	 + Standard deviation of the Fast Fourier Transform (FFT) of the Jerk of the body acceleration time domain signals in the Z dimension

*  fBody.Gyroscope.mean.X   
 	 + Mean of the Fast Fourier Transform (FFT) of the gyroscope time domain signals in the X dimension

*  fBody.Gyroscope.mean.Y   
 	 + Mean of the Fast Fourier Transform (FFT) of the gyroscope time domain signals in the Y dimension

*  fBody.Gyroscope.mean.Z   
 	 + Mean of the Fast Fourier Transform (FFT) of the gyroscope time domain signals in the Z dimension

*  fBody.Gyroscope.std.X   
 	 + Standard deviation of the Fast Fourier Transform (FFT) of the gyroscope time domain signals in the X dimension

*  fBody.Gyroscope.std.Y   
 	 + Standard deviation of the Fast Fourier Transform (FFT) of the gyroscope time domain signals in the Y dimension

*  fBody.Gyroscope.std.Z   
 	 + Standard deviation of the Fast Fourier Transform (FFT) of the gyroscope time domain signals in the Z dimension

*  fBody.Acceleration.Mag.mean   
  	 + Mean of the Fast Fourier Transform (FFT) of the magnitude of the time domain body acceleration signals

*  fBody.Acceleration.Mag.std   
  	 + Standard deviation of the Fast Fourier Transform (FFT) of the magnitude of the time domain body acceleration signals

*  fBody.Acceleration.Jerk.Mag.mean   
  	 + Mean of the Fast Fourier Transform (FFT) of the magnitude of the jerk of the time domain body acceleration signals

*  fBody.Acceleration.Jerk.Mag.std   
  	 + Standard deviation of the Fast Fourier Transform (FFT) of the magnitude of the jerk of the time domain body acceleration signals

*  fBody.Gyroscope.Mag.mean   
  	 + Mean of the Fast Fourier Transform (FFT) of the magnitude of the gyroscope time domain signals

*  fBody.Gyroscope.Mag.std   
  	 + Standard deviation of the Fast Fourier Transform (FFT) of the magnitude of the gyroscope time domain signals

*  fBody.Gyroscope.Jerk.Mag.mean   
 	 + Mean of the Fast Fourier Transform (FFT) of the magnitude of the jerk of the time domain gyroscope signals

*  fBody.Gyroscope.Jerk.Mag.std   
 	 + Standard deviation of the Fast Fourier Transform (FFT) of the magnitude of the jerk of the time domain gyroscope signals