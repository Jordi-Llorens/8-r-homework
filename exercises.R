# 1. ----
# Complete the code to return only even numbers
# Hint: one word is all you need :)

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
  vec <- c()
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



# 7. ----
# The rivers data “gives the lengths (in miles) of 141 “major” rivers in 
# North America, as compiled by the US Geological Survey” 
# (you can find this description, and additonal information, if you enter 
# help(rivers) in R).
# Calculate the mean of rivers after trimming the 10 highest and lowest observations. 
# Hint: first calculate the trim fraction, using the length function.
trimmed_mean <- function(rivers){
  # your code
}


# 8. ----

# Suppose you put $1,000 in an investment fund that will exhibit the following
# annual returns in the next 10 years: 9% 18% 10% 7% 2% 17% -8% 5% 9% 33%. 

# Show how much money your investment will be worth at the end of each year for
# the next 10 years, assuming returns are re-invested every year. 
# We give the answer with a general function called myinvestment.
# The function takes the arguments: 
# - investment (number)
# - returns_vector (numeric vector): for example, c(.09,.18,.10).

# Hint: If an investment returns e.g. 4% per year, it will be worth 1.04 times 
# as much after one year, 1.04 * 1.04 times as much after two years, 
# 1.04 * 1.04 * 1.04 times as much after three years, etc.
# Hint 2: explore the cumprod() function.

myinvestment <- function(investment, returns_vector){
  # your code
}


# 9. -----
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

# 10. ----
# We are going to draw many paths from a brownian motion. 
# The first thing to note is that a brownian motion is just a cumulative sum
# of normal random variables (mean 0, sd  1). 
# For this exercise we will ignore that the initial value of a BM is zero.
# The function brownian_paths takes the following arguments:
# - nsim: number of simulations
# - N: number of observations per path
# The output should be a matrix with nsim rows and N columns.

brownian_paths <- function(nsim, N){
  # your code
}

