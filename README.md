#Purpose
The purpose of this project is to write an R script to create a tidy data file and analysis from the following set of data:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###File Descriptions
* **run_analysis.R** - the R script that transforms the raw data file into a tidy data set. This script produces a file called output.txt which contains the average standard deviation and mean data for each subject of the original dataset. The data in output.txt is also returned as a dataframe when this script is run or run_analysis() is called.
* **analysis_functions.R** - helper functions for run_analysis.R
* **CodeBook.md** - describes any transformations and meaning of the variables
* **output.txt** - the output produced by run_analysis.R

###Directory setup
To run correctly, run_analysis.R and analysis_functions.R must be in the same directory
along with the unzipped folder called UCI HAR Dataset.

It should look like this:

* MyDirectory/
  * run_analysis.R
  * analysis_functions.R
  * UCI HAR Dataset/
    * etc.


