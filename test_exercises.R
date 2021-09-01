# source('exercises.R')
source('solutions.R')
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

# 4. chr2int ----
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

# 5. na.by.col ----

bool_vec <- c(F,F,F,T,F)
wine <- read.csv('data/wine.csv')

if (is.null(na.by.col(wine))){
  errors <- c(errors, 'na.by.col yields NULL')
} else if (!identical(as.logical(na.by.col(wine)), bool_vec)){
  errors <- c(errors, 'na.by.col does not correctly identify cols with NA')
} else if (!identical(as.logical(na.by.col(wine[,-2])),bool_vec[-2])){
  errors <- c(errors, 'na.by.col does not correctly identify cols with NA')
} else {
  correct <- correct + 1
}

# 6. chr2date ----

dobs <- c("1999-03-03","1992-02-14","1985-05-04","1985-10-14","1993-11-14",
          "1992-05-26","1986-06-30","1981-01-09","2000-04-26","1986-05-03")
ages <- as.integer(c(22,29,36,35,27,29,35,40,21,35))
today <- Sys.Date()
ix <- sample(1:10,5)

if (is.null(dob2age(today = today, dates = dobs))){
  errors <- c(errors, 'dob2age yields NULL')
} else if (!identical(as.integer(dob2age(today = today, dates = dobs)),ages)){
  errors <- c(errors, 'dob2age does not give the right ages')
} else if (!identical(as.integer(dob2age(today = today, dates = dobs[ix])),
                      ages[ix])){
  errors <- c(errors, 'dob2age does not give the right ages')
} else if (!identical(tryCatch(expr=dob2age('1970-01-01',dobs[1]),
                    error = function(e) return('nice catch!')),"nice catch!")){
  errors <- c(errors, 'dob2age does not stop when today < date of birth')
} else {
  correct <- correct + 1
}

# Grading ----

n <- 6
if (correct < n){
  print(errors)
  stop('Grade: ', round(correct/n,2)*100)
} else {
  print(paste('Grade: ', 100))
}
