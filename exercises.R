# 1. ----
# Complete the code to return only even numbers

even <- function(vector){
  out <- NULL
  for (var in vector) {
    if (var %% 2 != 0) {
      # your code
    }  
    out <- c(out,var)
  }
  return(out)
}


# 2. ----
# Complete the code so that is TRUE 
# when the 1st element of bool_vec1 is TRUE or 
# the 1st element of bool_vec2 is TRUE

is.first.true <- function(bool_vec1,bool_vec2){
  # your code
}


# 3. ----
# Complete the code to return a vector ranging from n to zero

countdown <- function(n){
  # your code
  while(n >= 0) {
    vec <- c(vec, n)
    # your code
  }
  return(vec)
}

# 4. -----
# Convert day column so that it is integer (without dplyr)

chr2int <- function(df){
  # your code
  return(df)
}


# 5. -----
# Determine which columns contain missing values (without dplyr)

na.by.col <- function(df){
  # your code
}

# 6. -----
# Convert date of birth to age. 
# Assume "today" is a character of the form "2021-09-01",
# and "date" is a vector of characters with the same format.
# We do not want to allow for dates that happen "today" or after. 
# Handle this with a stopifnot
# Ages should be given in YEARS (not in days), and if decimal they 
# should be rounded to the lowest integer

dob2age <- function(today,dates){
  # your code
}

# 7. -----
# Law of Large Numbers and Expected Values
# Assume "x" is a numeric vector, and "p" a numeric vector of probabilities.
# When "type" is "discrete", the expected value is (x_1*p_1 + ... + x_n*p_n)
# When "type" is "continuous", we use the Probability Integral Transform
# to simulate 1 million draws of X and approximate the expected value with the
# sample average (due to the LLN). 
# Hint: simulate 1 million draws from a uniform distribution and 
# use the inverse CDF function (icdf) to get the corresponding simulated values of X.
# Hint2: "type" can only be "discrete" or "continuous", but we want to let the user
# input only "D" for "discrete" or "C" for continuous. You may use match.arg().

exp.val <- function(x,p,icdf,type=c('discrete','continuous')){
  # your code
  if (type=='discrete'){
    # your code
  } else {
    # your code
  }
}

# 8. ----
# E-step: for each row in the data matrix, assign the closest centroid 
# based on distance d(x,y).
# Arguments:
# data: an n x p matrix.
# mu: a K x p matrix.
# d: a function d(x,y) where x and y are p-dimensional vectors.
# Note: the vector of assignments must be in the range {1,...,K}.

e_step <- function(data, centroids, d){
  n <- nrow(data)
  assignments <- rep(NA,n)
  for (i in 1:n){
    # your code
  }
  return(assignments)  
}

# 9. ----
# M-step: recompute the centroids based on the sample average. 
# Arguments:
# data: an n x p matrix.
# assignments: an n-vector of integers in {1,...,K}.
# d: a function d(x,y) where x and y are p-dimensional vectors.
#
# For example, if K = 2, then the first centroid is the p-dimensional mean vector
# of the data points assigned to class 1
# and the second centroid is the p-dimensional mean vector of data points 
# assigned to class 2.

m_step <- function(data, assignments, d){
  # your code
  return(centroids)
}

# 10. ----
# K-means algorithm. 
# Arguments: 
# data: n x p matrix.
# K: an integer > 1.
# d: a function d(x,y) where x and y are p-dimensional vectors.
# Hint: use the functions e_step and m_step inside the while loop and exit the loop
# when the vector of assignments stops changing.

my_kmeans <- function(data,K,d){
  n <- nrow(data)
  p <- ncol(data)
  centroids <- data[sample(1:n,size=K,replace=T),]
  assignments <- rep(NA,n)
  while(TRUE){
    # your code
  }
  return(assignments)
}
