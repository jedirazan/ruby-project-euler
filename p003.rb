# https://projecteuler.net/problem=3
#
# Largest prime factor
#
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def find_prime_factors(num)
	return [] if num == 1
	factor = (2..num).find{|x| num % x == 0}
	[factor] + find_prime_factors(num/factor)
end

puts find_prime_factors(600851475143).max