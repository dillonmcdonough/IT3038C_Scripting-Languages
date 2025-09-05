#!/bin/bash

# Prompt the user to enter two numbers (ask for the first number and then the second)
echo "Enter the first number (x):"
read x
echo "Enter the second number (y):"
read y

# Perform arithmetic operations
math_sum=$((x + y))
math_diff=$((x - y))
math_prod=$((x * y))
if [ $y -ne 0 ]; then
    math_quot=$((x / y))
else
    math_quot="undefined (division by zero)"
fi

# Store results in variables
sum=$math_sum
diff=$math_diff
prod=$math_prod
quot=$math_quot

# Display the results
echo "The sum of $x and $y is $math_sum."
echo "The difference between $x and $y is $math_diff."
echo "The product of $x and $y is $math_prod."
echo "The quotient of $x divided by $y is $math_quot."

#Passed all tests