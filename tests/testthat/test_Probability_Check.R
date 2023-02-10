
test_that("Highest probability is higher than lowest probability", {
  trans <- data.table(CustomerId = c(15662641,15653251),
                      ChurnProb = c(0.01192970, 0.9405975)
                      )
  max <- Give_Churn_Prob(trans,trans[ChurnProb == max(trans$ChurnProb, na.rm = TRUE),CustomerId])
  min <- Give_Churn_Prob(trans,trans[ChurnProb == min(trans$ChurnProb, na.rm = TRUE),CustomerId])
  expect_true(max > min)
})

