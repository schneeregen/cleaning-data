# Code book

Raw data has been downloadad at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The raw data comes from the UCI machine learing repository and comprises data from human activity measurements tracked by smartphone (Samsung Galaxy S II).
Information on the dataset is avaiable under http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 
The script run_analysis.R creates two tidy data sets. 

The first contains the mean and standard deviation for each measurement. The output file is called tidy_data.txt.
The second tidy data set contains the average of each variable for each activity and each subject. The output file is called tidy_data_averages.txt.


## Hint: Variable naming
I use variable names in the tidy data set according to the suggestions mentioned in video lecture "Editing text variables" from week 4 (lower case, no underscores, dots or white spaces).
For variable names in the coded script I follow the best practice rules of "Google's R Style Guide" (https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml), so there are variable names with dots in the code.

## Variables
The tidy dataset comprises 68 Variables:

1. **subject** - A number that identifies the participant, has got integer values from 1 to 30

2. **activity** - A factor that identifies the activity, might be "walking", "walking-upstairs", "walking-downstairs", "sitting", "standing" or "laying"

The values of the following variables are floating point numbers between -1 and +1.

3. **tbodyacc-mean-x** - The mean of the body acceleration on the X axis. 

4. **tbodyacc-mean-y** - The mean of the body acceleration on the Y axis.

5. **tbodyacc-mean-z** - The mean of the body acceleration on the Z axis.

6. **tbodyacc-std-x** - The mean of the body standard deviation on the X axis.

7. **tbodyacc-std-y** - The mean of the body standard deviation on the Y axis.

8. **tbodyacc-std-z** - The mean of the body standard deviation on the Z axis.

9. **tgravityacc-mean-x** - The mean of the gravity acceleration on the X axis. 

10. **tgravityacc-mean-y** - The mean of the gravity acceleration on the Y axis. 

11.  **tgravityacc-mean-z** - The mean of the gravity acceleration on the Z axis. 

12.  **tgravityacc-std-x** - The gravity standard deviation on the X axis.

13.  **tgravityacc-std-y** - The gravity standard deviation on the Y axis.

14.  **tgravityacc-std-z** - The gravity standard deviation on the Z axis.

15. **tbodyaccjerk-mean-x** - The mean of the body acceleration on the X axis, derived in time to obtain Jerk signals. 

16.  **tbodyaccjerk-mean-y** - The mean of the body acceleration on the Y axis, derived in time to obtain Jerk signals. 

17.  **tbodyaccjerk-mean-z** - The mean of the body acceleration on the Z axis, derived in time to obtain Jerk signals. 

18. **tbodyaccjerk-std-x** The standard deviation of the body acceleration on the X axis, derived in time to obtain Jerk signals.

19. **tbodyaccjerk-std-y**  The standard deviation of the body acceleration on the Y axis, derived in time to obtain Jerk signals.

20.  **tbodyaccjerk-std-z** - The standard deviation of the body acceleration on the Z axis, derived in time to obtain Jerk signals. 

21. **tbodygyro-mean-x**  - The mean of the body gyroscope X axis. 

22. **tbodygyro-mean-y** - The mean of the body gyroscope Y axis. 

23. **tbodygyro-mean-z** - The mean of the body gyroscope Z axis. 

24. **tbodygyro-std-x** - The standard deviation of the body gyroscope X axis. 

25. **tbodygyro-std-y** - The standard deviation of the body gyroscope Y axis. 
 
26. **tbodygyro-std-z** - The standard deviation of the body gyroscope Z axis. 

27. **tbodygyrojerk-mean-x** - The mean of the body gyroscope X axis, derived in time to obtain Jerk signals. 

28. **tbodygyrojerk-mean-y**  - The mean of the body gyroscope Y axis, derived in time to obtain Jerk signals. 

29. **tbodygyrojerk-mean-z**  - The mean of the body gyroscope Z axis, derived in time to obtain Jerk signals. 

30. **tbodygyrojerk-std-x** - The standard deviation of the body gyroscope X axis, derived in time to obtain Jerk signals. 

31. **tbodygyrojerk-std-y** - The standard deviation of the body gyroscope Y axis, derived in time to obtain Jerk signals. 

32. **tbodygyrojerk-std-z** - The standard deviation of the body gyroscope Z axis, derived in time to obtain Jerk signals. 

33. **tbodyaccmag-mean** - Magnitude of the mean of the body acceleration calculated using the Euclidean norm.

34. **tbodyaccmag-std** - Magnitude of the standard deviation of the body acceleration calculated using the Euclidean norm.

35. **tgravityaccmag-mean** - Magnitude of the mean of the gravity acceleration calculated using the Euclidean norm.

36. **tgravityaccmag-std** - Magnitude of the standard deviation of the gravity acceleration calculated using the Euclidean norm.

37. **tbodyaccjerkmag-mean** - Magnitude of the mean of the body acceleration, derived in time to obtain Jerk signals, calculated using the Euclidean norm.

38. **tbodyaccjerkmag-std** - Magnitude of the standard deviation of the body acceleration, derived in time to obtain Jerk signals, calculated using the Euclidean norm.

39. **tbodygyromag-mean** - Magnitude of the mean of the body gyroscope, calculated using the Euclidean norm.

40. **tbodygyromag-std** - Magnitude of the standard deviation of the body gyroscope, calculated using the Euclidean norm.

41. **tbodygyrojerkmag-mean** - Magnitude of the mean of the body gyroscope Jerk signals, calculated using the Euclidean norm.

42. **tbodygyrojerkmag-std** - Magnitude of the standard deviation of the body gyroscope Jerk signals, calculated using the Euclidean norm.

43. **fbodyacc-mean-x** - The mean of the body acceleration on the X axis, with a Fast Fourier Transform (FFT) applied.

44. **fbodyacc-mean-y** - The mean of the body acceleration on the Y axis, with a Fast Fourier Transform (FFT) applied.

45. **fbodyacc-mean-z** - The mean of the body acceleration on the Z axis, with a Fast Fourier Transform (FFT) applied.

46. **fbodyacc-std-x** - The standard deviation of the body acceleration on the X axis, with a Fast Fourier Transform (FFT) applied.

47. **fbodyacc-std-y** - The standard deviation of the body acceleration on the Y axis, with a Fast Fourier Transform (FFT) applied.

48. **fbodyacc-std-z** - The standard deviation of the body acceleration on the Z axis, with a Fast Fourier Transform (FFT) applied.

49. **fbodyaccjerk-mean-x** - The mean of the body acceleration on the X axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

50. **fbodyaccjerk-mean-y** - The mean of the body acceleration on the Y axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

51. **fbodyaccjerk-mean-z** - The mean of the body acceleration on the Z axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

52. **fbodyaccjerk-std-x** - The standard deviation of the body acceleration on the X axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

53. **fbodyaccjerk-std-y** - The standard deviation of the body acceleration on the Y axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

54. **fbodyaccjerk-std-z** - The standard deviation of the body acceleration on the Z axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

55. **fbodygyro-mean-x** - The mean of the body gyroscope X axis, with a Fast Fourier Transform (FFT) applied. 

56. **fbodygyro-mean-y** - The mean of the body gyroscope Y axis, with a Fast Fourier Transform (FFT) applied.  

57. **fbodygyro-mean-z** - The mean of the body gyroscope Z axis, with a Fast Fourier Transform (FFT) applied. 

58. **fbodygyro-std-x** - The standard deviation of the body gyroscope X axis, with a Fast Fourier Transform (FFT) applied. 

59. **fbodygyro-std-y** - The standard deviation of the body gyroscope Y axis, with a Fast Fourier Transform (FFT) applied. 

60. **fbodygyro-std-z** - The standard deviation of the body gyroscope Z axis, with a Fast Fourier Transform (FFT) applied. 

61. **fbodyaccmag-mean** - Magnitude of the mean body acceleration, calculated using the Euclidean norm.

62. **fbodyaccmag-std** - Magnitude of the standard deviation body acceleration, calculated using the Euclidean norm.

63. **fbodybodyaccjerkmag-mean** - Magnitude of the mean of the body acceleration Jerk signals, calculated using the Euclidean norm.

64. **fbodybodyaccjerkmag-std**  - Magnitude of the standard deviation of the body acceleration Jerk signals, calculated using the Euclidean norm.

65. **fbodybodygyromag-mean**  - Magnitude of the mean of the body gyroscope, calculated using the Euclidean norm.

66. **fbodybodygyromag-std** - Magnitude of the standard deviation of the body gyroscope, calculated using the Euclidean norm.

67. **fbodybodygyrojerkmag-mean**  - Magnitude of the mean of the body gyroscope Jerk signals, calculated using the Euclidean norm.

68. **fbodybodygyrojerkmag-std**  - Magnitude of the standard deviation of the body gyroscope Jerk signals, calculated using the Euclidean norm.

