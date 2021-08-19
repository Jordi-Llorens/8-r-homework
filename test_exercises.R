source('exercises.R')

test_that("hello prints Hello Data Science!",{
  expect_equal(hello() , "Hello Data!")
})