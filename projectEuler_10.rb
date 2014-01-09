# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

def is_prime k
  2.upto(Math.sqrt(k).to_i) do |x|
    return false if k % x == 0 or (k - 1) <= 1
  end
  true
end

sum = 2
for i in 3..2000000 do
  sum = sum + i if is_prime(i)
  i = i + 1
end	
puts sum

