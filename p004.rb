# https://projecteuler.net/problem=4
#
# Largest palindrome product
#
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# 100 ≤ n ≤ 999
# 11000 * n - 9901 * (n / 10) - 989 * (n / 100)

def find_palindrome(from, to)
	highest = (from..to).map do |i|
	  (i..to).map do |j|
	    i * j
	  end.select{|n| n.to_s == n.to_s.reverse}
	end
	highest
end

puts find_palindrome(100, 999).max