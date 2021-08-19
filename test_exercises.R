source('exercises.R')

correct <- 0
errors <- c()

if (identical(hello(),"Hello Data Science!")){
  correct <- correct + 1
} else {
  errors <- c(errors, 'hello() does not print Hello Data Science!')
}

if (correct < 1){
  print(errors)
  stop('Grade: ',round(correct/1,2)*100)
} else {
  print(paste('Grade: ', 100))
}
