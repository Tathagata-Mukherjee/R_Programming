#Taking a input from user

num<-readline("Enter a string")        #Takes String as Input

num<-as.numeric(readline("Enter a number"))       #Takes Integer as Input


# Define a function to calculate the square of a number taken from the user
calculate_square <- function() {
  # Prompt the user to enter a number
  num <- as.numeric(readline("Enter a number: "))
  
  # Calculate the square
  square <- num^2
  
  # Print the result
  cat("Square of", num, "is:", square, "\n")
}

# Call the function
calculate_square()
