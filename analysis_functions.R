get_act_names <- function(){
     act_names <- read.table(act_names_path, header = FALSE, col.names = c("activity_number", "activity_name"))
     return(act_names)
}

get_col_names <- function(){
     #Make column names unique by appending column index
     col_names <- read.table(col_path, header = FALSE)
     col_names <- t(col_names[2])
     col_names[461:502] <- paste(col_names[461:502], "_", 461:502, sep = "")
     col_names[382:423] <- paste(col_names[382:423], "_", 382:423, sep = "")
     col_names[303:344] <- paste(col_names[303:344], "_", 303:344, sep = "")
     
     #col_names <- clean_col_names(col_names)
     
     return(col_names)     
}


clean_col_names <- function(col_names){
      col_names <- gsub("mean", "Mean", col_names)
     col_names <- gsub("std", "Std", col_names)
     col_names <- gsub("\\.", "", col_names)
     
     return(col_names)
}

     


get_file <- function(prefix, col_names){
     n1 <- paste(f_dir, "test/", prefix, "test.txt", sep = "")
     n2 <- paste(f_dir, "train/", prefix, "train.txt", sep = "")
     
     s1 <- read.table(n1, header = FALSE, col.names = col_names)
     s2 <- read.table(n2, header = FALSE, col.names = col_names)
     
     
     s1 <- rbind(s1, s2)
     
     return(s1);
}

get_avg_table <- function (tbl, act_names){
     d <- data.frame(matrix(vector(), 180, dim(tbl)[2]))
     cleaned <- clean_col_names(names(tbl))
     cleaned[1] <- "subjectNumber"
     cleaned[2] <- "activityName"
     colnames(d) <- cleaned
          
     cnt <- 1
     
     for (s in 1:30){
          for(a in 1:dim(act_names)[1]){
               d[cnt, 1] <- s
               d[cnt, 2] <- act_names[a, 2]
               temp <- tbl %>% filter(Subject_Number == s, activity_name == act_names[a, 2])
               d[cnt, -(1:2)] <- colMeans(temp[-(1:2)])
               cnt <- cnt + 1  
          }
     }
     
     
     return(d)
}
