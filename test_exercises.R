source('exercises.R')
# source('solutions.R')
correct <- 0
errors <- c()

# 1. even ----

if (!is.null(even(c(2,3,4))) &&
  identical(even(c(2,3,4)),c(2,4))){
  correct <- correct + 1
} else {
  errors <- c(errors, 'even does not filter out odd')
}

# 2. is.first.true ----

bool_vec1 <- c(TRUE, FALSE, FALSE)
bool_vec2 <- c(FALSE, TRUE, TRUE)
if (!is.null(is.first.true(bool_vec1, bool_vec2)) &&
            is.first.true(bool_vec1, bool_vec2)){
  correct <- correct + 1
} else {
  errors <- c(errors, 
              'bool_vec1[1] is TRUE but output of eq_at_least is not TRUE')
}

# 3. countdown ----

n <- 10

if (!is.null(countdown(n)) &&
    identical(countdown(n), as.numeric(10:0))){
  correct <- correct + 1
} else {
  errors <- c(errors, 
              'countdown(10) != 10:0')
}


# Grading ----

n <- 3
if (correct < n){
  print(errors)
  stop('Grade: ',round(correct/n,2)*100)
} else {
  print(paste('Grade: ', 100))
}
