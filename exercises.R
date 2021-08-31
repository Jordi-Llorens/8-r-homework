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


# 5. Determine which columns contain missing values ----

na.by.col <- function(df){
  # your code
}
