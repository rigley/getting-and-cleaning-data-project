library("dplyr")
source("analysis_functions.R")



#Constants
f_dir <- paste(getwd(), "/uci har dataset/", sep = "")
test_path <- paste(f_dir, "test/X_test.txt", sep = "")
col_path <- paste(f_dir, "features.txt", sep = "")
subj_path <- paste(f_dir, "test/subject_test.txt", sep = "")
act_path <- paste(f_dir, "test/y_test.txt", sep = "")
act_names_path <- paste(f_dir, "activity_labels.txt", sep = "")
subj_prefix <- "subject_"
subj_col <- "Subject_Number"
act_prefix <- "y_"
act_num_col <- "activity_number"
act_name_col <- "activity_name"

col_names <- get_col_names();
act_names <- get_act_names();

#Labels
subj_nums <- get_file(subj_prefix, subj_col)

#activity numbers
act_nums <- get_file(act_prefix, act_num_col)
act_nums <- inner_join(act_nums, act_names, by = act_num_col)
act_nums <- transmute(act_nums, activity_name)

#Test Data
test_table <- get_file("X_", col_names)

#filter columns
means <- select(test_table, contains("mean"))
stds <- select(test_table, contains("std"))

result_table <- cbind(subj_nums, act_nums, means, stds)

avg_table <- get_avg_table(result_table, act_names)

write.table(avg_table, file = "output.txt", row.names = FALSE)
write.table(colnames(avg_table), file = "col_names", row.names = FALSE)
