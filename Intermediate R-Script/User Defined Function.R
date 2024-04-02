#User Defined Function

# Define a function to take input from the user and calculate the square
calculate_square <- function() {
  # Prompt the user to enter a number
  num <- as.numeric(readline("Enter a number: "))
  
  # Calculate the square
  square <- num^2
  
  # Print the result
  cat("Square of", num, "is:", square, "\n")
  
  # Return the square value (optional)
  return(square)
}

# Call the function
calculate_square()
