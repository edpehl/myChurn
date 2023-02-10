Give_Churn_Prob <- function(data, x){
  result <- data[CustomerId == x, ChurnProb]
  if(x %in% data[,CustomerId]){
    print("CustomerId exists in the dataset")
    print(paste("The Churn prob for that CustomerId is", result))
  } else {
    print("Error")
  }
}
