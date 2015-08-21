# ReadMe for the Getting and Cleaning Data Programming Assignment

## Files in this folder

+ `data_means.txt` is a tidy dataset containing averaged results of the Human Activity Recognition Using Smartphones Dataset.

+ `CodeBook.md` contains a description of the variables used in data_means.txt

+ `run_analysis.R` is an R script that produces the dataset mentioned above on the basis of the raw data provided by the authors of the study

## Documentation of the data conversion

### Merging the data

After reading all the raw data provided by the study authors into R, these data were unified in a single dataset. This was achieved by the following steps:

1. Assign the measure names provided in the `features.txt` file to the columns in the `X_test.txt` dataset.

2. Add a new variable called _treatment_ that specifies to which dataset the subject belongs.

3. The contents of the files `subject_test.txt` (containing a list of the subject IDs each observation in the `X_test.txt` dataset, called _subjectID_) and `y_test.txt` (containing a list of the corresponding activities of the observations in the `X_test.txt` dataset, called _activity_) as well as the new _treatment_ variable are put together in one dataset with the `cbind`-command.

4. Repeat steps 1-3 for the files belonging to the train treatment accordingly.

5. Add the datasets of both treatments vertically with the `rbind`-command. This could be done because their columns were identical

### Subsetting to the desired measures

Since only the columns that contain the means and standard deviations of each measurement are required, several columns could be dropped:

1. The columns that contain the means of the measurements all contain the term "mean()". Therefore, the column names are searched for `"mean\\("` by calling `grep` ignoring cases, which produces a vector of the column indices that match the requirement.
    + _Note_: Including the bracket in the search term is important since there are further column names containing "mean". However, according to the descriptions in `features_info.txt` they do not contain means of measurements, but are rather means of other components or just use the means to do further calculations.

2. The same is done for the columns containing the standard deviations with the search term `"std\\("`.

3. Both vectors are concatenated and then sorted to avoid maintain the original order of the columns (and just dropping the undesired ones)

4. The dataset is subsetted to the first three columns (with information on the subjectID, activity and treatment) and the ones in the vector.

### Using descriptive activity names

To have more intuitive labels for the different activities in column 2, they were matched with the information stored in `activity_labels.txt`.

1. Change column class to factor.

2. Match the labels with those in the mentioned file.


### Renaming variables

The original measurement names are not very intuitive, and as tidy data are easier to handle if they have understandable variable names, they are renamed. Here a balance has to be struck between understandable names and their length. Furthermore, there is always the codebook to refer to for the exact meaning of the variables. 

In the renaming process, several `gsub` commands were run to eliminate dashes, brackets, and abbreviations and the meaningful parts were seperated by dots for better readability.

### Calculating averages for each activity and each subject

Finally, a new dataset is to be created "with the average of each variable for each activity and each subject". The instruction is a little imprecise, since the "average" is no clearly defined statistical measure and the task leaves open how to subset the dataset. Therefore, different assumptions are made:

+ "Average" is interpreted as the arithmetic mean of each measure.

+ It seeams more reasonable to calculate the mean for each combination of the subjects and their performed activities, thus obtaining averaged data that can be compared across subjects and across activities.

1. Calculate the mean using the `aggregate` command of the `reshape2` package, aggregating the data by subjectID, activity and treatment. (Strictly speaking, the treatment is not necessary, but otherwise the variable would be dropped from the dataset.)

2. Sort the data by subjectID and activity for enhanced readability.
