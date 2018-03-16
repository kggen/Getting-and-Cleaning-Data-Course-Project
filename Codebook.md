## Getting and Cleaning Data - Course Project


The 'CodeBook.md' file describes the data in the data set: 
* original data sources;
* operations performed in order to make the variable names more descriptive;
* descriptions of the coding abbreviations;
* list of the variables in the dataset.

### Original data sources

As pointed out in the ReadMe.md file, all data for the assignment is downloaded from the following link:
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

### Operations performed in order to make the variable names more descriptive

No changes to the original names of the variables were performed in steps 1, 2 and 3 of the assignment. Two additional columns called "Subject" and "Activity Label" were introduced to the dataset in step 2.

All operations to the variable names are done in step 4 from the run_analysis.R script (pelase see the script for the code used)

In general, the following two operations were performed:
All dashes and underdashes ("-" and "_") were replaced by dots (".").
The symbols "t" and "f" were extended to "Time." and "Frequency." 

Thus all column names convert into short description convention with dots (".") between feature properties. 

Taking into consideration the descriptions presented below, the variable names are descriptive enough to deliver clarity for a potential user of the data.

### Deccriptions of the coding abbreviations

Here is a description of the abbreviations, used in the variable names. The specific meaning of each variable can be Obtained by matching the abbreviations of the variable name to the description in the table below:

|Abbreviation    |Description                                                                                                                      |
|:---------------|:--------------------------------------------------------------------------------------------------------------------------------|
|Subject         |Subsequent number of the volunteer participated in the experiment                                                                |
|Activity Labels |One of the six acticvities performed by the volunteers: walking, walking upstairs, walking downstairs, sitting, standing, laying |
|Time            |Measurement of the "time" domain                                                                                                 |
|Frequency       |Measurement of the "frequency" domain                                                                                            |
|Acc             |Feature taken from the accelerometer signals. It is divided into "Body" and "Gravity"                                            |
|Gyro            |Feature taken from the gyroscope signals. It is divided into "Body" and "Gravity"                                                |
|Body            |Body acceleration signal                                                                                                         |
|Gravity         |Gravity acceleration signal                                                                                                      |
|Mag             |Magnitude of the signal                                                                                                          |
|Jerk            |Measurement of a sudden movement                                                                                                 |
|X               |Measure of the X-axis of the accelerometer or gyroscope                                                                          |
|Y               |Measure of the Y-axis of the accelerometer or gyroscope                                                                          |
|Z               |Measure of the Z-axis of the accelerometer or gyroscope                                                                          |




Most of the variables represent calculations made to the original dataset by the authors of the data before the current analysis is performed. Here is a description of the abbreviations of the functions, as applied in the original dataset:

|Function      |Description                                                                  |
|:-------------|:----------------------------------------------------------------------------|
|mean()        |Mean value                                                                   |
|std()         |Standard deviation                                                           |
|mad()         |Median absolute deviation                                                    |
|max()         |Largest value in array                                                       |
|min()         |Smallest value in array                                                      |
|sma()         |Signal magnitude area                                                        |
|energy()      |Energy measure. Sum of the squares divided by the number of values.          |
|iqr()         |Interquartile range                                                          |
|entropy()     |Signal entropy                                                               |
|arCoeff()     |Autorregresion coefficients with Burg order equal to 4                       |
|correlation() |correlation coefficient between two signals                                  |
|maxInds()     |index of the frequency component with largest magnitude                      |
|meanFreq()    |Weighted average of the frequency components to obtain a mean frequency      |
|skewness()    |skewness of the frequency domain signal                                      |
|kurtosis()    |kurtosis of the frequency domain signal                                      |
|bandsEnergy() |Energy of a frequency interval within the 64 bins of the FFT of each window. |
|angle()       |Angle between to vectors.                                                    |

Please note that the number at the end of some of the variables represent different variables with duplicate names, or the frequency interval within the 64 bins of the FFT of each window for the bandsEnergy() calculations.

### Extensive list of variables


|Number |Variable.Name                               |
|:------|:-------------------------------------------|
|1      |Subject                                     |
|2      |Activity Label                              |
|3      |Time.BodyAcc.mean().X                       |
|4      |Time.BodyAcc.mean().Y                       |
|5      |Time.BodyAcc.mean().Z                       |
|6      |Time.BodyAcc.std().X                        |
|7      |Time.BodyAcc.std().Y                        |
|8      |Time.BodyAcc.std().Z                        |
|9      |Time.BodyAcc.mad().X                        |
|10     |Time.BodyAcc.mad().Y                        |
|11     |Time.BodyAcc.mad().Z                        |
|12     |Time.BodyAcc.max().X                        |
|13     |Time.BodyAcc.max().Y                        |
|14     |Time.BodyAcc.max().Z                        |
|15     |Time.BodyAcc.min().X                        |
|16     |Time.BodyAcc.min().Y                        |
|17     |Time.BodyAcc.min().Z                        |
|18     |Time.BodyAcc.sma()                          |
|19     |Time.BodyAcc.energy().X                     |
|20     |Time.BodyAcc.energy().Y                     |
|21     |Time.BodyAcc.energy().Z                     |
|22     |Time.BodyAcc.iqr().X                        |
|23     |Time.BodyAcc.iqr().Y                        |
|24     |Time.BodyAcc.iqr().Z                        |
|25     |Time.BodyAcc.entropy().X                    |
|26     |Time.BodyAcc.entropy().Y                    |
|27     |Time.BodyAcc.entropy().Z                    |
|28     |Time.BodyAcc.arCoeff().X,1                  |
|29     |Time.BodyAcc.arCoeff().X,2                  |
|30     |Time.BodyAcc.arCoeff().X,3                  |
|31     |Time.BodyAcc.arCoeff().X,4                  |
|32     |Time.BodyAcc.arCoeff().Y,1                  |
|33     |Time.BodyAcc.arCoeff().Y,2                  |
|34     |Time.BodyAcc.arCoeff().Y,3                  |
|35     |Time.BodyAcc.arCoeff().Y,4                  |
|36     |Time.BodyAcc.arCoeff().Z,1                  |
|37     |Time.BodyAcc.arCoeff().Z,2                  |
|38     |Time.BodyAcc.arCoeff().Z,3                  |
|39     |Time.BodyAcc.arCoeff().Z,4                  |
|40     |Time.BodyAcc.correlation().X,Y              |
|41     |Time.BodyAcc.correlation().X,Z              |
|42     |Time.BodyAcc.correlation().Y,Z              |
|43     |Time.GravityAcc.mean().X                    |
|44     |Time.GravityAcc.mean().Y                    |
|45     |Time.GravityAcc.mean().Z                    |
|46     |Time.GravityAcc.std().X                     |
|47     |Time.GravityAcc.std().Y                     |
|48     |Time.GravityAcc.std().Z                     |
|49     |Time.GravityAcc.mad().X                     |
|50     |Time.GravityAcc.mad().Y                     |
|51     |Time.GravityAcc.mad().Z                     |
|52     |Time.GravityAcc.max().X                     |
|53     |Time.GravityAcc.max().Y                     |
|54     |Time.GravityAcc.max().Z                     |
|55     |Time.GravityAcc.min().X                     |
|56     |Time.GravityAcc.min().Y                     |
|57     |Time.GravityAcc.min().Z                     |
|58     |Time.GravityAcc.sma()                       |
|59     |Time.GravityAcc.energy().X                  |
|60     |Time.GravityAcc.energy().Y                  |
|61     |Time.GravityAcc.energy().Z                  |
|62     |Time.GravityAcc.iqr().X                     |
|63     |Time.GravityAcc.iqr().Y                     |
|64     |Time.GravityAcc.iqr().Z                     |
|65     |Time.GravityAcc.entropy().X                 |
|66     |Time.GravityAcc.entropy().Y                 |
|67     |Time.GravityAcc.entropy().Z                 |
|68     |Time.GravityAcc.arCoeff().X,1               |
|69     |Time.GravityAcc.arCoeff().X,2               |
|70     |Time.GravityAcc.arCoeff().X,3               |
|71     |Time.GravityAcc.arCoeff().X,4               |
|72     |Time.GravityAcc.arCoeff().Y,1               |
|73     |Time.GravityAcc.arCoeff().Y,2               |
|74     |Time.GravityAcc.arCoeff().Y,3               |
|75     |Time.GravityAcc.arCoeff().Y,4               |
|76     |Time.GravityAcc.arCoeff().Z,1               |
|77     |Time.GravityAcc.arCoeff().Z,2               |
|78     |Time.GravityAcc.arCoeff().Z,3               |
|79     |Time.GravityAcc.arCoeff().Z,4               |
|80     |Time.GravityAcc.correlation().X,Y           |
|81     |Time.GravityAcc.correlation().X,Z           |
|82     |Time.GravityAcc.correlation().Y,Z           |
|83     |Time.BodyAccJerk.mean().X                   |
|84     |Time.BodyAccJerk.mean().Y                   |
|85     |Time.BodyAccJerk.mean().Z                   |
|86     |Time.BodyAccJerk.std().X                    |
|87     |Time.BodyAccJerk.std().Y                    |
|88     |Time.BodyAccJerk.std().Z                    |
|89     |Time.BodyAccJerk.mad().X                    |
|90     |Time.BodyAccJerk.mad().Y                    |
|91     |Time.BodyAccJerk.mad().Z                    |
|92     |Time.BodyAccJerk.max().X                    |
|93     |Time.BodyAccJerk.max().Y                    |
|94     |Time.BodyAccJerk.max().Z                    |
|95     |Time.BodyAccJerk.min().X                    |
|96     |Time.BodyAccJerk.min().Y                    |
|97     |Time.BodyAccJerk.min().Z                    |
|98     |Time.BodyAccJerk.sma()                      |
|99     |Time.BodyAccJerk.energy().X                 |
|100    |Time.BodyAccJerk.energy().Y                 |
|101    |Time.BodyAccJerk.energy().Z                 |
|102    |Time.BodyAccJerk.iqr().X                    |
|103    |Time.BodyAccJerk.iqr().Y                    |
|104    |Time.BodyAccJerk.iqr().Z                    |
|105    |Time.BodyAccJerk.entropy().X                |
|106    |Time.BodyAccJerk.entropy().Y                |
|107    |Time.BodyAccJerk.entropy().Z                |
|108    |Time.BodyAccJerk.arCoeff().X,1              |
|109    |Time.BodyAccJerk.arCoeff().X,2              |
|110    |Time.BodyAccJerk.arCoeff().X,3              |
|111    |Time.BodyAccJerk.arCoeff().X,4              |
|112    |Time.BodyAccJerk.arCoeff().Y,1              |
|113    |Time.BodyAccJerk.arCoeff().Y,2              |
|114    |Time.BodyAccJerk.arCoeff().Y,3              |
|115    |Time.BodyAccJerk.arCoeff().Y,4              |
|116    |Time.BodyAccJerk.arCoeff().Z,1              |
|117    |Time.BodyAccJerk.arCoeff().Z,2              |
|118    |Time.BodyAccJerk.arCoeff().Z,3              |
|119    |Time.BodyAccJerk.arCoeff().Z,4              |
|120    |Time.BodyAccJerk.correlation().X,Y          |
|121    |Time.BodyAccJerk.correlation().X,Z          |
|122    |Time.BodyAccJerk.correlation().Y,Z          |
|123    |Time.BodyGyro.mean().X                      |
|124    |Time.BodyGyro.mean().Y                      |
|125    |Time.BodyGyro.mean().Z                      |
|126    |Time.BodyGyro.std().X                       |
|127    |Time.BodyGyro.std().Y                       |
|128    |Time.BodyGyro.std().Z                       |
|129    |Time.BodyGyro.mad().X                       |
|130    |Time.BodyGyro.mad().Y                       |
|131    |Time.BodyGyro.mad().Z                       |
|132    |Time.BodyGyro.max().X                       |
|133    |Time.BodyGyro.max().Y                       |
|134    |Time.BodyGyro.max().Z                       |
|135    |Time.BodyGyro.min().X                       |
|136    |Time.BodyGyro.min().Y                       |
|137    |Time.BodyGyro.min().Z                       |
|138    |Time.BodyGyro.sma()                         |
|139    |Time.BodyGyro.energy().X                    |
|140    |Time.BodyGyro.energy().Y                    |
|141    |Time.BodyGyro.energy().Z                    |
|142    |Time.BodyGyro.iqr().X                       |
|143    |Time.BodyGyro.iqr().Y                       |
|144    |Time.BodyGyro.iqr().Z                       |
|145    |Time.BodyGyro.entropy().X                   |
|146    |Time.BodyGyro.entropy().Y                   |
|147    |Time.BodyGyro.entropy().Z                   |
|148    |Time.BodyGyro.arCoeff().X,1                 |
|149    |Time.BodyGyro.arCoeff().X,2                 |
|150    |Time.BodyGyro.arCoeff().X,3                 |
|151    |Time.BodyGyro.arCoeff().X,4                 |
|152    |Time.BodyGyro.arCoeff().Y,1                 |
|153    |Time.BodyGyro.arCoeff().Y,2                 |
|154    |Time.BodyGyro.arCoeff().Y,3                 |
|155    |Time.BodyGyro.arCoeff().Y,4                 |
|156    |Time.BodyGyro.arCoeff().Z,1                 |
|157    |Time.BodyGyro.arCoeff().Z,2                 |
|158    |Time.BodyGyro.arCoeff().Z,3                 |
|159    |Time.BodyGyro.arCoeff().Z,4                 |
|160    |Time.BodyGyro.correlation().X,Y             |
|161    |Time.BodyGyro.correlation().X,Z             |
|162    |Time.BodyGyro.correlation().Y,Z             |
|163    |Time.BodyGyroJerk.mean().X                  |
|164    |Time.BodyGyroJerk.mean().Y                  |
|165    |Time.BodyGyroJerk.mean().Z                  |
|166    |Time.BodyGyroJerk.std().X                   |
|167    |Time.BodyGyroJerk.std().Y                   |
|168    |Time.BodyGyroJerk.std().Z                   |
|169    |Time.BodyGyroJerk.mad().X                   |
|170    |Time.BodyGyroJerk.mad().Y                   |
|171    |Time.BodyGyroJerk.mad().Z                   |
|172    |Time.BodyGyroJerk.max().X                   |
|173    |Time.BodyGyroJerk.max().Y                   |
|174    |Time.BodyGyroJerk.max().Z                   |
|175    |Time.BodyGyroJerk.min().X                   |
|176    |Time.BodyGyroJerk.min().Y                   |
|177    |Time.BodyGyroJerk.min().Z                   |
|178    |Time.BodyGyroJerk.sma()                     |
|179    |Time.BodyGyroJerk.energy().X                |
|180    |Time.BodyGyroJerk.energy().Y                |
|181    |Time.BodyGyroJerk.energy().Z                |
|182    |Time.BodyGyroJerk.iqr().X                   |
|183    |Time.BodyGyroJerk.iqr().Y                   |
|184    |Time.BodyGyroJerk.iqr().Z                   |
|185    |Time.BodyGyroJerk.entropy().X               |
|186    |Time.BodyGyroJerk.entropy().Y               |
|187    |Time.BodyGyroJerk.entropy().Z               |
|188    |Time.BodyGyroJerk.arCoeff().X,1             |
|189    |Time.BodyGyroJerk.arCoeff().X,2             |
|190    |Time.BodyGyroJerk.arCoeff().X,3             |
|191    |Time.BodyGyroJerk.arCoeff().X,4             |
|192    |Time.BodyGyroJerk.arCoeff().Y,1             |
|193    |Time.BodyGyroJerk.arCoeff().Y,2             |
|194    |Time.BodyGyroJerk.arCoeff().Y,3             |
|195    |Time.BodyGyroJerk.arCoeff().Y,4             |
|196    |Time.BodyGyroJerk.arCoeff().Z,1             |
|197    |Time.BodyGyroJerk.arCoeff().Z,2             |
|198    |Time.BodyGyroJerk.arCoeff().Z,3             |
|199    |Time.BodyGyroJerk.arCoeff().Z,4             |
|200    |Time.BodyGyroJerk.correlation().X,Y         |
|201    |Time.BodyGyroJerk.correlation().X,Z         |
|202    |Time.BodyGyroJerk.correlation().Y,Z         |
|203    |Time.BodyAccMag.mean()                      |
|204    |Time.BodyAccMag.std()                       |
|205    |Time.BodyAccMag.mad()                       |
|206    |Time.BodyAccMag.max()                       |
|207    |Time.BodyAccMag.min()                       |
|208    |Time.BodyAccMag.sma()                       |
|209    |Time.BodyAccMag.energy()                    |
|210    |Time.BodyAccMag.iqr()                       |
|211    |Time.BodyAccMag.entropy()                   |
|212    |Time.BodyAccMag.arCoeff()1                  |
|213    |Time.BodyAccMag.arCoeff()2                  |
|214    |Time.BodyAccMag.arCoeff()3                  |
|215    |Time.BodyAccMag.arCoeff()4                  |
|216    |Time.GravityAccMag.mean()                   |
|217    |Time.GravityAccMag.std()                    |
|218    |Time.GravityAccMag.mad()                    |
|219    |Time.GravityAccMag.max()                    |
|220    |Time.GravityAccMag.min()                    |
|221    |Time.GravityAccMag.sma()                    |
|222    |Time.GravityAccMag.energy()                 |
|223    |Time.GravityAccMag.iqr()                    |
|224    |Time.GravityAccMag.entropy()                |
|225    |Time.GravityAccMag.arCoeff()1               |
|226    |Time.GravityAccMag.arCoeff()2               |
|227    |Time.GravityAccMag.arCoeff()3               |
|228    |Time.GravityAccMag.arCoeff()4               |
|229    |Time.BodyAccJerkMag.mean()                  |
|230    |Time.BodyAccJerkMag.std()                   |
|231    |Time.BodyAccJerkMag.mad()                   |
|232    |Time.BodyAccJerkMag.max()                   |
|233    |Time.BodyAccJerkMag.min()                   |
|234    |Time.BodyAccJerkMag.sma()                   |
|235    |Time.BodyAccJerkMag.energy()                |
|236    |Time.BodyAccJerkMag.iqr()                   |
|237    |Time.BodyAccJerkMag.entropy()               |
|238    |Time.BodyAccJerkMag.arCoeff()1              |
|239    |Time.BodyAccJerkMag.arCoeff()2              |
|240    |Time.BodyAccJerkMag.arCoeff()3              |
|241    |Time.BodyAccJerkMag.arCoeff()4              |
|242    |Time.BodyGyroMag.mean()                     |
|243    |Time.BodyGyroMag.std()                      |
|244    |Time.BodyGyroMag.mad()                      |
|245    |Time.BodyGyroMag.max()                      |
|246    |Time.BodyGyroMag.min()                      |
|247    |Time.BodyGyroMag.sma()                      |
|248    |Time.BodyGyroMag.energy()                   |
|249    |Time.BodyGyroMag.iqr()                      |
|250    |Time.BodyGyroMag.entropy()                  |
|251    |Time.BodyGyroMag.arCoeff()1                 |
|252    |Time.BodyGyroMag.arCoeff()2                 |
|253    |Time.BodyGyroMag.arCoeff()3                 |
|254    |Time.BodyGyroMag.arCoeff()4                 |
|255    |Time.BodyGyroJerkMag.mean()                 |
|256    |Time.BodyGyroJerkMag.std()                  |
|257    |Time.BodyGyroJerkMag.mad()                  |
|258    |Time.BodyGyroJerkMag.max()                  |
|259    |Time.BodyGyroJerkMag.min()                  |
|260    |Time.BodyGyroJerkMag.sma()                  |
|261    |Time.BodyGyroJerkMag.energy()               |
|262    |Time.BodyGyroJerkMag.iqr()                  |
|263    |Time.BodyGyroJerkMag.entropy()              |
|264    |Time.BodyGyroJerkMag.arCoeff()1             |
|265    |Time.BodyGyroJerkMag.arCoeff()2             |
|266    |Time.BodyGyroJerkMag.arCoeff()3             |
|267    |Time.BodyGyroJerkMag.arCoeff()4             |
|268    |Frequency.BodyAcc.mean().X                  |
|269    |Frequency.BodyAcc.mean().Y                  |
|270    |Frequency.BodyAcc.mean().Z                  |
|271    |Frequency.BodyAcc.std().X                   |
|272    |Frequency.BodyAcc.std().Y                   |
|273    |Frequency.BodyAcc.std().Z                   |
|274    |Frequency.BodyAcc.mad().X                   |
|275    |Frequency.BodyAcc.mad().Y                   |
|276    |Frequency.BodyAcc.mad().Z                   |
|277    |Frequency.BodyAcc.max().X                   |
|278    |Frequency.BodyAcc.max().Y                   |
|279    |Frequency.BodyAcc.max().Z                   |
|280    |Frequency.BodyAcc.min().X                   |
|281    |Frequency.BodyAcc.min().Y                   |
|282    |Frequency.BodyAcc.min().Z                   |
|283    |Frequency.BodyAcc.sma()                     |
|284    |Frequency.BodyAcc.energy().X                |
|285    |Frequency.BodyAcc.energy().Y                |
|286    |Frequency.BodyAcc.energy().Z                |
|287    |Frequency.BodyAcc.iqr().X                   |
|288    |Frequency.BodyAcc.iqr().Y                   |
|289    |Frequency.BodyAcc.iqr().Z                   |
|290    |Frequency.BodyAcc.entropy().X               |
|291    |Frequency.BodyAcc.entropy().Y               |
|292    |Frequency.BodyAcc.entropy().Z               |
|293    |Frequency.BodyAcc.maxInds.X                 |
|294    |Frequency.BodyAcc.maxInds.Y                 |
|295    |Frequency.BodyAcc.maxInds.Z                 |
|296    |Frequency.BodyAcc.meanFreq().X              |
|297    |Frequency.BodyAcc.meanFreq().Y              |
|298    |Frequency.BodyAcc.meanFreq().Z              |
|299    |Frequency.BodyAcc.skewness().X              |
|300    |Frequency.BodyAcc.kurtosis().X              |
|301    |Frequency.BodyAcc.skewness().Y              |
|302    |Frequency.BodyAcc.kurtosis().Y              |
|303    |Frequency.BodyAcc.skewness().Z              |
|304    |Frequency.BodyAcc.kurtosis().Z              |
|305    |Frequency.BodyAcc.bandsEnergy().1,8         |
|306    |Frequency.BodyAcc.bandsEnergy().9,16        |
|307    |Frequency.BodyAcc.bandsEnergy().17,24       |
|308    |Frequency.BodyAcc.bandsEnergy().25,32       |
|309    |Frequency.BodyAcc.bandsEnergy().33,40       |
|310    |Frequency.BodyAcc.bandsEnergy().41,48       |
|311    |Frequency.BodyAcc.bandsEnergy().49,56       |
|312    |Frequency.BodyAcc.bandsEnergy().57,64       |
|313    |Frequency.BodyAcc.bandsEnergy().1,16        |
|314    |Frequency.BodyAcc.bandsEnergy().17,32       |
|315    |Frequency.BodyAcc.bandsEnergy().33,48       |
|316    |Frequency.BodyAcc.bandsEnergy().49,64       |
|317    |Frequency.BodyAcc.bandsEnergy().1,24        |
|318    |Frequency.BodyAcc.bandsEnergy().25,48       |
|319    |Frequency.BodyAcc.bandsEnergy().1,8.1       |
|320    |Frequency.BodyAcc.bandsEnergy().9,16.1      |
|321    |Frequency.BodyAcc.bandsEnergy().17,24.1     |
|322    |Frequency.BodyAcc.bandsEnergy().25,32.1     |
|323    |Frequency.BodyAcc.bandsEnergy().33,40.1     |
|324    |Frequency.BodyAcc.bandsEnergy().41,48.1     |
|325    |Frequency.BodyAcc.bandsEnergy().49,56.1     |
|326    |Frequency.BodyAcc.bandsEnergy().57,64.1     |
|327    |Frequency.BodyAcc.bandsEnergy().1,16.1      |
|328    |Frequency.BodyAcc.bandsEnergy().17,32.1     |
|329    |Frequency.BodyAcc.bandsEnergy().33,48.1     |
|330    |Frequency.BodyAcc.bandsEnergy().49,64.1     |
|331    |Frequency.BodyAcc.bandsEnergy().1,24.1      |
|332    |Frequency.BodyAcc.bandsEnergy().25,48.1     |
|333    |Frequency.BodyAcc.bandsEnergy().1,8.2       |
|334    |Frequency.BodyAcc.bandsEnergy().9,16.2      |
|335    |Frequency.BodyAcc.bandsEnergy().17,24.2     |
|336    |Frequency.BodyAcc.bandsEnergy().25,32.2     |
|337    |Frequency.BodyAcc.bandsEnergy().33,40.2     |
|338    |Frequency.BodyAcc.bandsEnergy().41,48.2     |
|339    |Frequency.BodyAcc.bandsEnergy().49,56.2     |
|340    |Frequency.BodyAcc.bandsEnergy().57,64.2     |
|341    |Frequency.BodyAcc.bandsEnergy().1,16.2      |
|342    |Frequency.BodyAcc.bandsEnergy().17,32.2     |
|343    |Frequency.BodyAcc.bandsEnergy().33,48.2     |
|344    |Frequency.BodyAcc.bandsEnergy().49,64.2     |
|345    |Frequency.BodyAcc.bandsEnergy().1,24.2      |
|346    |Frequency.BodyAcc.bandsEnergy().25,48.2     |
|347    |Frequency.BodyAccJerk.mean().X              |
|348    |Frequency.BodyAccJerk.mean().Y              |
|349    |Frequency.BodyAccJerk.mean().Z              |
|350    |Frequency.BodyAccJerk.std().X               |
|351    |Frequency.BodyAccJerk.std().Y               |
|352    |Frequency.BodyAccJerk.std().Z               |
|353    |Frequency.BodyAccJerk.mad().X               |
|354    |Frequency.BodyAccJerk.mad().Y               |
|355    |Frequency.BodyAccJerk.mad().Z               |
|356    |Frequency.BodyAccJerk.max().X               |
|357    |Frequency.BodyAccJerk.max().Y               |
|358    |Frequency.BodyAccJerk.max().Z               |
|359    |Frequency.BodyAccJerk.min().X               |
|360    |Frequency.BodyAccJerk.min().Y               |
|361    |Frequency.BodyAccJerk.min().Z               |
|362    |Frequency.BodyAccJerk.sma()                 |
|363    |Frequency.BodyAccJerk.energy().X            |
|364    |Frequency.BodyAccJerk.energy().Y            |
|365    |Frequency.BodyAccJerk.energy().Z            |
|366    |Frequency.BodyAccJerk.iqr().X               |
|367    |Frequency.BodyAccJerk.iqr().Y               |
|368    |Frequency.BodyAccJerk.iqr().Z               |
|369    |Frequency.BodyAccJerk.entropy().X           |
|370    |Frequency.BodyAccJerk.entropy().Y           |
|371    |Frequency.BodyAccJerk.entropy().Z           |
|372    |Frequency.BodyAccJerk.maxInds.X             |
|373    |Frequency.BodyAccJerk.maxInds.Y             |
|374    |Frequency.BodyAccJerk.maxInds.Z             |
|375    |Frequency.BodyAccJerk.meanFreq().X          |
|376    |Frequency.BodyAccJerk.meanFreq().Y          |
|377    |Frequency.BodyAccJerk.meanFreq().Z          |
|378    |Frequency.BodyAccJerk.skewness().X          |
|379    |Frequency.BodyAccJerk.kurtosis().X          |
|380    |Frequency.BodyAccJerk.skewness().Y          |
|381    |Frequency.BodyAccJerk.kurtosis().Y          |
|382    |Frequency.BodyAccJerk.skewness().Z          |
|383    |Frequency.BodyAccJerk.kurtosis().Z          |
|384    |Frequency.BodyAccJerk.bandsEnergy().1,8     |
|385    |Frequency.BodyAccJerk.bandsEnergy().9,16    |
|386    |Frequency.BodyAccJerk.bandsEnergy().17,24   |
|387    |Frequency.BodyAccJerk.bandsEnergy().25,32   |
|388    |Frequency.BodyAccJerk.bandsEnergy().33,40   |
|389    |Frequency.BodyAccJerk.bandsEnergy().41,48   |
|390    |Frequency.BodyAccJerk.bandsEnergy().49,56   |
|391    |Frequency.BodyAccJerk.bandsEnergy().57,64   |
|392    |Frequency.BodyAccJerk.bandsEnergy().1,16    |
|393    |Frequency.BodyAccJerk.bandsEnergy().17,32   |
|394    |Frequency.BodyAccJerk.bandsEnergy().33,48   |
|395    |Frequency.BodyAccJerk.bandsEnergy().49,64   |
|396    |Frequency.BodyAccJerk.bandsEnergy().1,24    |
|397    |Frequency.BodyAccJerk.bandsEnergy().25,48   |
|398    |Frequency.BodyAccJerk.bandsEnergy().1,8.1   |
|399    |Frequency.BodyAccJerk.bandsEnergy().9,16.1  |
|400    |Frequency.BodyAccJerk.bandsEnergy().17,24.1 |
|401    |Frequency.BodyAccJerk.bandsEnergy().25,32.1 |
|402    |Frequency.BodyAccJerk.bandsEnergy().33,40.1 |
|403    |Frequency.BodyAccJerk.bandsEnergy().41,48.1 |
|404    |Frequency.BodyAccJerk.bandsEnergy().49,56.1 |
|405    |Frequency.BodyAccJerk.bandsEnergy().57,64.1 |
|406    |Frequency.BodyAccJerk.bandsEnergy().1,16.1  |
|407    |Frequency.BodyAccJerk.bandsEnergy().17,32.1 |
|408    |Frequency.BodyAccJerk.bandsEnergy().33,48.1 |
|409    |Frequency.BodyAccJerk.bandsEnergy().49,64.1 |
|410    |Frequency.BodyAccJerk.bandsEnergy().1,24.1  |
|411    |Frequency.BodyAccJerk.bandsEnergy().25,48.1 |
|412    |Frequency.BodyAccJerk.bandsEnergy().1,8.2   |
|413    |Frequency.BodyAccJerk.bandsEnergy().9,16.2  |
|414    |Frequency.BodyAccJerk.bandsEnergy().17,24.2 |
|415    |Frequency.BodyAccJerk.bandsEnergy().25,32.2 |
|416    |Frequency.BodyAccJerk.bandsEnergy().33,40.2 |
|417    |Frequency.BodyAccJerk.bandsEnergy().41,48.2 |
|418    |Frequency.BodyAccJerk.bandsEnergy().49,56.2 |
|419    |Frequency.BodyAccJerk.bandsEnergy().57,64.2 |
|420    |Frequency.BodyAccJerk.bandsEnergy().1,16.2  |
|421    |Frequency.BodyAccJerk.bandsEnergy().17,32.2 |
|422    |Frequency.BodyAccJerk.bandsEnergy().33,48.2 |
|423    |Frequency.BodyAccJerk.bandsEnergy().49,64.2 |
|424    |Frequency.BodyAccJerk.bandsEnergy().1,24.2  |
|425    |Frequency.BodyAccJerk.bandsEnergy().25,48.2 |
|426    |Frequency.BodyGyro.mean().X                 |
|427    |Frequency.BodyGyro.mean().Y                 |
|428    |Frequency.BodyGyro.mean().Z                 |
|429    |Frequency.BodyGyro.std().X                  |
|430    |Frequency.BodyGyro.std().Y                  |
|431    |Frequency.BodyGyro.std().Z                  |
|432    |Frequency.BodyGyro.mad().X                  |
|433    |Frequency.BodyGyro.mad().Y                  |
|434    |Frequency.BodyGyro.mad().Z                  |
|435    |Frequency.BodyGyro.max().X                  |
|436    |Frequency.BodyGyro.max().Y                  |
|437    |Frequency.BodyGyro.max().Z                  |
|438    |Frequency.BodyGyro.min().X                  |
|439    |Frequency.BodyGyro.min().Y                  |
|440    |Frequency.BodyGyro.min().Z                  |
|441    |Frequency.BodyGyro.sma()                    |
|442    |Frequency.BodyGyro.energy().X               |
|443    |Frequency.BodyGyro.energy().Y               |
|444    |Frequency.BodyGyro.energy().Z               |
|445    |Frequency.BodyGyro.iqr().X                  |
|446    |Frequency.BodyGyro.iqr().Y                  |
|447    |Frequency.BodyGyro.iqr().Z                  |
|448    |Frequency.BodyGyro.entropy().X              |
|449    |Frequency.BodyGyro.entropy().Y              |
|450    |Frequency.BodyGyro.entropy().Z              |
|451    |Frequency.BodyGyro.maxInds.X                |
|452    |Frequency.BodyGyro.maxInds.Y                |
|453    |Frequency.BodyGyro.maxInds.Z                |
|454    |Frequency.BodyGyro.meanFreq().X             |
|455    |Frequency.BodyGyro.meanFreq().Y             |
|456    |Frequency.BodyGyro.meanFreq().Z             |
|457    |Frequency.BodyGyro.skewness().X             |
|458    |Frequency.BodyGyro.kurtosis().X             |
|459    |Frequency.BodyGyro.skewness().Y             |
|460    |Frequency.BodyGyro.kurtosis().Y             |
|461    |Frequency.BodyGyro.skewness().Z             |
|462    |Frequency.BodyGyro.kurtosis().Z             |
|463    |Frequency.BodyGyro.bandsEnergy().1,8        |
|464    |Frequency.BodyGyro.bandsEnergy().9,16       |
|465    |Frequency.BodyGyro.bandsEnergy().17,24      |
|466    |Frequency.BodyGyro.bandsEnergy().25,32      |
|467    |Frequency.BodyGyro.bandsEnergy().33,40      |
|468    |Frequency.BodyGyro.bandsEnergy().41,48      |
|469    |Frequency.BodyGyro.bandsEnergy().49,56      |
|470    |Frequency.BodyGyro.bandsEnergy().57,64      |
|471    |Frequency.BodyGyro.bandsEnergy().1,16       |
|472    |Frequency.BodyGyro.bandsEnergy().17,32      |
|473    |Frequency.BodyGyro.bandsEnergy().33,48      |
|474    |Frequency.BodyGyro.bandsEnergy().49,64      |
|475    |Frequency.BodyGyro.bandsEnergy().1,24       |
|476    |Frequency.BodyGyro.bandsEnergy().25,48      |
|477    |Frequency.BodyGyro.bandsEnergy().1,8.1      |
|478    |Frequency.BodyGyro.bandsEnergy().9,16.1     |
|479    |Frequency.BodyGyro.bandsEnergy().17,24.1    |
|480    |Frequency.BodyGyro.bandsEnergy().25,32.1    |
|481    |Frequency.BodyGyro.bandsEnergy().33,40.1    |
|482    |Frequency.BodyGyro.bandsEnergy().41,48.1    |
|483    |Frequency.BodyGyro.bandsEnergy().49,56.1    |
|484    |Frequency.BodyGyro.bandsEnergy().57,64.1    |
|485    |Frequency.BodyGyro.bandsEnergy().1,16.1     |
|486    |Frequency.BodyGyro.bandsEnergy().17,32.1    |
|487    |Frequency.BodyGyro.bandsEnergy().33,48.1    |
|488    |Frequency.BodyGyro.bandsEnergy().49,64.1    |
|489    |Frequency.BodyGyro.bandsEnergy().1,24.1     |
|490    |Frequency.BodyGyro.bandsEnergy().25,48.1    |
|491    |Frequency.BodyGyro.bandsEnergy().1,8.2      |
|492    |Frequency.BodyGyro.bandsEnergy().9,16.2     |
|493    |Frequency.BodyGyro.bandsEnergy().17,24.2    |
|494    |Frequency.BodyGyro.bandsEnergy().25,32.2    |
|495    |Frequency.BodyGyro.bandsEnergy().33,40.2    |
|496    |Frequency.BodyGyro.bandsEnergy().41,48.2    |
|497    |Frequency.BodyGyro.bandsEnergy().49,56.2    |
|498    |Frequency.BodyGyro.bandsEnergy().57,64.2    |
|499    |Frequency.BodyGyro.bandsEnergy().1,16.2     |
|500    |Frequency.BodyGyro.bandsEnergy().17,32.2    |
|501    |Frequency.BodyGyro.bandsEnergy().33,48.2    |
|502    |Frequency.BodyGyro.bandsEnergy().49,64.2    |
|503    |Frequency.BodyGyro.bandsEnergy().1,24.2     |
|504    |Frequency.BodyGyro.bandsEnergy().25,48.2    |
|505    |Frequency.BodyAccMag.mean()                 |
|506    |Frequency.BodyAccMag.std()                  |
|507    |Frequency.BodyAccMag.mad()                  |
|508    |Frequency.BodyAccMag.max()                  |
|509    |Frequency.BodyAccMag.min()                  |
|510    |Frequency.BodyAccMag.sma()                  |
|511    |Frequency.BodyAccMag.energy()               |
|512    |Frequency.BodyAccMag.iqr()                  |
|513    |Frequency.BodyAccMag.entropy()              |
|514    |Frequency.BodyAccMag.maxInds                |
|515    |Frequency.BodyAccMag.meanFreq()             |
|516    |Frequency.BodyAccMag.skewness()             |
|517    |Frequency.BodyAccMag.kurtosis()             |
|518    |Frequency.BodyBodyAccJerkMag.mean()         |
|519    |Frequency.BodyBodyAccJerkMag.std()          |
|520    |Frequency.BodyBodyAccJerkMag.mad()          |
|521    |Frequency.BodyBodyAccJerkMag.max()          |
|522    |Frequency.BodyBodyAccJerkMag.min()          |
|523    |Frequency.BodyBodyAccJerkMag.sma()          |
|524    |Frequency.BodyBodyAccJerkMag.energy()       |
|525    |Frequency.BodyBodyAccJerkMag.iqr()          |
|526    |Frequency.BodyBodyAccJerkMag.entropy()      |
|527    |Frequency.BodyBodyAccJerkMag.maxInds        |
|528    |Frequency.BodyBodyAccJerkMag.meanFreq()     |
|529    |Frequency.BodyBodyAccJerkMag.skewness()     |
|530    |Frequency.BodyBodyAccJerkMag.kurtosis()     |
|531    |Frequency.BodyBodyGyroMag.mean()            |
|532    |Frequency.BodyBodyGyroMag.std()             |
|533    |Frequency.BodyBodyGyroMag.mad()             |
|534    |Frequency.BodyBodyGyroMag.max()             |
|535    |Frequency.BodyBodyGyroMag.min()             |
|536    |Frequency.BodyBodyGyroMag.sma()             |
|537    |Frequency.BodyBodyGyroMag.energy()          |
|538    |Frequency.BodyBodyGyroMag.iqr()             |
|539    |Frequency.BodyBodyGyroMag.entropy()         |
|540    |Frequency.BodyBodyGyroMag.maxInds           |
|541    |Frequency.BodyBodyGyroMag.meanFreq()        |
|542    |Frequency.BodyBodyGyroMag.skewness()        |
|543    |Frequency.BodyBodyGyroMag.kurtosis()        |
|544    |Frequency.BodyBodyGyroJerkMag.mean()        |
|545    |Frequency.BodyBodyGyroJerkMag.std()         |
|546    |Frequency.BodyBodyGyroJerkMag.mad()         |
|547    |Frequency.BodyBodyGyroJerkMag.max()         |
|548    |Frequency.BodyBodyGyroJerkMag.min()         |
|549    |Frequency.BodyBodyGyroJerkMag.sma()         |
|550    |Frequency.BodyBodyGyroJerkMag.energy()      |
|551    |Frequency.BodyBodyGyroJerkMag.iqr()         |
|552    |Frequency.BodyBodyGyroJerkMag.entropy()     |
|553    |Frequency.BodyBodyGyroJerkMag.maxInds       |
|554    |Frequency.BodyBodyGyroJerkMag.meanFreq()    |
|555    |Frequency.BodyBodyGyroJerkMag.skewness()    |
|556    |Frequency.BodyBodyGyroJerkMag.kurtosis()    |
|557    |angle(tBodyAccMean,gravity)                 |
|558    |angle(tBodyAccJerkMean),gravityMean)        |
|559    |angle(tBodyGyroMean,gravityMean)            |
|560    |angle(tBodyGyroJerkMean,gravityMean)        |
|561    |angle(X,gravityMean)                        |
|562    |angle(Y,gravityMean)                        |
|563    |angle(Z,gravityMean)                        |

---
title: "Codebook.md"
author: "Kiril Genov"
date: "March 15, 2018"
output: html_document
---

