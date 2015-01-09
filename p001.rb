# https://projecteuler.net/problem=1
#
# Multiples of 3 and 5
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# (sum of multiples of 3) + (sum of multiples of 5) – (sum of multiples of 15)

def sum_of_multiples(multiple, max)
	n = (max-1)/multiple
	n*(n+1)/2*multiple
end

puts sum_of_multiples(3,1000) + sum_of_multiples(5,1000) - sum_of_multiples(15,1000)