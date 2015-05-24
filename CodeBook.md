## This CodeBook mark down file is a description of the variables created by run_analysis.R

### The following variables are outputs of run_analysis.R and stored in Tidy.txt
#### No of Variables : 88
#### No of observations : 180 (30 subjects x 6 activity)

##### Note : As features are normalized and bounded within [-1,1], the average of mean and standard deviation are also bounded within [-1,1]. 



### Name of variables and descriptions:
* Subject : Identifier of 30 persons
* Activity : Each person performed 6 activities : LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS and WALKING_UPSTAIR 
* TimeBodyAccelerometerMean-X : average time of body accelerometer in X direction
* TimeBodyAccelerometerMean-Y : average time of body accelerometer in Y direction
* TimeBodyAccelerometerMean-Z : average time of body accelerometer in Z direction
* TimeBodyAccelerometerSTD-X : standard deviation of time of body accelerometer in X direction
* TimeBodyAccelerometerSTD-Y : standard deviation of time of body accelerometer in Y direction                      
* TimeBodyAccelerometerSTD-Z : standard deviation of time of body accelerometer in Z direction                      
* TimeGravityAccelerometerMean-X : average time of gravity accelerometer in X direction               
* TimeGravityAccelerometerMean-Y : average time of gravity accelerometer in Y direction
* TimeGravityAccelerometerMean-Z : average time of gravity accelerometer in Z direction                 
* TimeGravityAccelerometerSTD-X : standard deviation of time of gravity accelerometer in X direction                  
* TimeGravityAccelerometerSTD-Y : standard deviation of time of gravity accelerometer in Y direction                  
* TimeGravityAccelerometerSTD-Z : standard deviation of time of gravity accelerometer in Z direction                  
* TimeBodyAccelerometerJerkMean-X : average time of body accelerometer of Jerk in X direction                 
* TimeBodyAccelerometerJerkMean-Y : average time of body accelerometer of Jerk in Y direction                
* TimeBodyAccelerometerJerkMean-Z : average time of body accelerometer of Jerk in Z direction                
* TimeBodyAccelerometerJerkSTD-X : standard deviation of time of body accelerometer of Jerk in X direction                 
* TimeBodyAccelerometerJerkSTD-Y : standard deviation of time of body accelerometer of Jerk in Y direction                 
* TimeBodyAccelerometerJerkSTD-Z : standard deviation of time of body accelerometer of Jerk in Z direction                 
* TimeBodyGyroscopeMean-X : average time of body Gyroscope in X direction                        
* TimeBodyGyroscopeMean-Y : average time of body Gyroscope in Y direction                        
* TimeBodyGyroscopeMean-Z : average time of body Gyroscope in Z direction                        
* TimeBodyGyroscopeSTD-X : standard deviation of time of body Gyroscope in X direction                         
* TimeBodyGyroscopeSTD-Y : standard deviation of time of body Gyroscope in Y direction                         
* TimeBodyGyroscopeSTD-Z : standard deviation of time of body Gyroscope in Z direction                         
* TimeBodyGyroscopeJerkMean-X : average time of body Gyroscope of Jerk in X direction                    
* TimeBodyGyroscopeJerkMean-Y : average time of body Gyroscope of Jerk in Y direction                    
* TimeBodyGyroscopeJerkMean-Z : average time of body Gyroscope of Jerk in Z direction                    
* TimeBodyGyroscopeJerkSTD-X : standard deviation of time of body Gyroscope of Jerk in X direction                     
* TimeBodyGyroscopeJerkSTD-Y : standard deviation of time of body Gyroscope of Jerk in Y direction                     
* TimeBodyGyroscopeJerkSTD-Z : standard deviation of time of body Gyroscope of Jerk in Z direction                     
* TimeBodyAccelerometerMagnitudeMean : average time of body accelerometer of Magnitude             
* TimeBodyAccelerometerMagnitudeSTD : standard deviation of time of body accelerometer of Magnitude              
* TimeGravityAccelerometerMagnitudeMean : average time of gravity accelerometer of Magnitude          
* TimeGravityAccelerometerMagnitudeSTD : standard deviation of time of gravity accelerometer of Magnitude           
* TimeBodyAccelerometerJerkMagnitudeMean : average time of body accelerometer of Jerk magnitude        
* TimeBodyAccelerometerJerkMagnitudeSTD : standard deviation of time of body accelerometer of Jerk magnitude          
* TimeBodyGyroscopeMagnitudeMean : average time of body Gyroscope of Magnitude                 
* TimeBodyGyroscopeMagnitudeSTD : standard deviation of time of body Gyroscope of Magnitude                   
* TimeBodyGyroscopeJerkMagnitudeMean : average time of body Gyroscope of Jerk Magnitude               
* TimeBodyGyroscopeJerkMagnitudeSTD : standard deviation of time of body Gyroscope of Jerk Magnitude              
* FrequencyBodyAccelerometerMean-X : average frequency of body accelerometer in X direction               
* FrequencyBodyAccelerometerMean-Y : average frequency of body accelerometer in Y direction               
* FrequencyBodyAccelerometerMean-Z : average frequency of body accelerometer in Z direction               
* FrequencyBodyAccelerometerSTD-X : standard deviation of frequency of body accelerometer in X direction                
* FrequencyBodyAccelerometerSTD-Y : standard deviation of frequency of body accelerometer in Y direction                
* FrequencyBodyAccelerometerSTD-Z : standard deviation of frequency of body accelerometer in Z direction
* FrequencyBodyAccelerometerMeanFreq-X : weighted average frequency of body accelerometer of in X direction 
* FrequencyBodyAccelerometerMeanFreq-Y : weighted average frequency of body accelerometer of in Y direction 
* FrequencyBodyAccelerometerMeanFreq-Z : weighted average frequency of body accelerometer of in Z direction 
* FrequencyBodyAccelerometerJerkMean-X : average frequency of body accelerometer of Jerk in X direction
* FrequencyBodyAccelerometerJerkMean-Y : average frequency of body accelerometer of Jerk in Y direction
* FrequencyBodyAccelerometerJerkMean-Z : average frequency of body accelerometer of Jerk in Z direction
* FrequencyBodyAccelerometerJerkSTD-X : standard deviation of frequency of body accelerometer of Jerk in X direction
* FrequencyBodyAccelerometerJerkSTD-Y : standard deviation of frequency of body accelerometer of Jerk in Y direction
* FrequencyBodyAccelerometerJerkSTD-Z : standard deviation of frequency of body accelerometer of Jerk in Z direction
* FrequencyBodyAccelerometerJerkMeanFreq-X : weighted average of frequency of body accelerometer of Jerk in X direction
* FrequencyBodyAccelerometerJerkMeanFreq-Y : weighted average of frequency of body accelerometer of Jerk in Y direction
* FrequencyBodyAccelerometerJerkMeanFreq-Z : weighted average of frequency of body accelerometer of Jerk in Z direction
* FrequencyBodyGyroscopeMean-X : average frequency of Body Gyroscope in X direction 
* FrequencyBodyGyroscopeMean-Y : average frequency of Body Gyroscope in Y direction
* FrequencyBodyGyroscopeMean-Z : average frequency of Body Gyroscope in Z direction
* FrequencyBodyGyroscopeSTD-X : standard deviation of frequency of Body Gyroscope in X direction
* FrequencyBodyGyroscopeSTD-Y : standard deviation of frequency of Body Gyroscope in Y direction
* FrequencyBodyGyroscopeSTD-Z : standard deviation of frequency of Body Gyroscope in Z direction
* FrequencyBodyGyroscopeMeanFreq-X : weighted average frequency of Body Gyroscope in X direction
* FrequencyBodyGyroscopeMeanFreq-Y : weighted average frequency of Body Gyroscope in Y direction
* FrequencyBodyGyroscopeMeanFreq-Z : weighted average frequency of Body Gyroscope in Z direction
* FrequencyBodyAccelerometerMagnitudeMean : average frequency of Body Accelerometer Magnitude 
* FrequencyBodyAccelerometerMagnitudeSTD : standard deviation of frequency of Body Accelerometer Magnitude 
* FrequencyBodyAccelerometerMagnitudeMeanFreq : weigthed average frequency of Body Accelerometer Magnitude 
* FrequencyBodyAccelerometerJerkMagnitudeMean : average frequency of Body Accelerometer Magnitude of Jerk
* FrequencyBodyAccelerometerJerkMagnitudeSTD : standard deviationi of frequency of Body Accelerometer Magnitude of Jerk
* FrequencyBodyAccelerometerJerkMagnitudeMeanFreq : weighted average frequency of Body Accelerometer Magnitude of Jerk
* FrequencyBodyGyroscopeMagnitudeMean : average frequency of Body Gyroscope Magnitude 
* FrequencyBodyGyroscopeMagnitudeSTD : standard deviation of frequency of Body Gyroscope Magnitude 
* FrequencyBodyGyroscopeMagnitudeMeanFreq : weighted average frequency of Body Gyroscope Magnitude 
* FrequencyBodyGyroscopeJerkMagnitudeMean : average frequency of Body Gyroscope Magnitude of Jerk
* FrequencyBodyGyroscopeJerkMagnitudeSTD : standard deviation of frequency of Body Gyroscope Magnitude of Jerk
* FrequencyBodyGyroscopeJerkMagnitudeMeanFreq : weighted average frequency of Body Gyroscope Magnitude of Jerk
* Angle(TimeBodyAccelerometerMean,Gravity) : angle between average time of body accelerometer of Jerk and gravity
* Angle(TimeBodyAccelerometerJerkMean),GravityMean) : angle between average time of body accelerometer of Jerk and average gravity
* Angle(TimeBodyGyroscopeMean,GravityMean) : angle between average time of body gyroscope and average gravity
* Angle(TimeBodyGyroscopeJerkMean,GravityMean) : angle between average time of body gyroscope of Jerk and average gravity
* Angle(X,GravityMean) : angle between X direction and average gravity
* Angle(Y,GravityMean) : angle between Y direction and average gravity
* Angle(Z,GravityMean) : angle between Z direction and average gravity




## Steps has been taken to create the above variables from raw data :
* Read in data for subjects, activities and features. Do this for train and test respectively.
* Attach labels to activities. 
* Combine train and test data.
* Keep only the relevant variables : mean and standard deviation of measurements. Remove the rest of data.
* Rename the variables names to become easily understand.
* Calculate the average of data by subjects and acticities.
* Order the data by subject , then by activities for easy reading.
* Output the data to a Tidy.txt.

