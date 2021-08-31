source('exercises.R')
# source('solutions.R')
correct <- 0
errors <- c()

# 1. even ----

if (is.null(even(c(2,3,4)))){
  errors <- c(errors, 'even yields NULL')
} else if (!identical(even(c(2,3,4)),c(2,4))){
  errors <- c(errors, 'even does not filter out odd')
} else {
  correct <- correct + 1
}

# 2. is.first.true ----

bool_vec1 <- c(TRUE, FALSE, FALSE)
bool_vec2 <- c(FALSE, TRUE, TRUE)
if (is.null(is.first.true(bool_vec1, bool_vec2))){
  errors <- c(errors, 'is.first.true yields NULL')
} else if (!is.first.true(bool_vec1, bool_vec2)){
  errors <- c(errors, 
              'bool_vec1[1] is TRUE but output of eq_at_least is not TRUE')
} else {
  correct <- correct + 1
}

# 3. countdown ----

if (is.null(countdown(10))){
  errors <- c(errors, 'countdown yields NULL')
} else if (!identical(countdown(10), as.numeric(10:0))){
  errors <- c(errors, 'countdown(10) != 10:0')
} else if (!identical(countdown(0), 0)){
  errors <- c(errors, 'countdown(0) != 0')
} else {
  correct <- correct + 1
}

# 4. convert column to numeric ----
sales <- read.table('data/sales.txt',header=TRUE,
                    colClasses = c(rep('character',2),
                                   rep('integer',2)))

if (is.null(chr2int(sales))){
  errors <- c(errors, 'chr2int yields NULL')
} else if (!identical( class(chr2int(sales)[,'day']), "integer" )){
  errors <- c(errors, 'chr2int does not convert to class integer')
} else {
  correct <- correct + 1
}

# 5. Determine which columns contain missing values ----
bool_vec <- c(F,F,F,T,F)
wine <- read.csv('data/wine.csv')
if (is.null(na.by.col(wine))){
  errors <- c(errors, 'na.by.col yields NULL')
} else if (!all(na.by.col(wine) == bool_vec)){
  errors <- c(errors, 'na.by.col does not correctly identify cols with NA')
} else {
  correct <- correct + 1
}

# Grading ----

n <- 5
if (correct < n){
  print(errors)
  stop('Grade: ',round(correct/n,2)*100)
} else {
  print(paste('Grade: ', 100))
}
