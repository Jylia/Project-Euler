# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?
counter = 0
i = 2

def is_prime k
  2.upto(Math.sqrt(k).to_i) do |x|
    return false if k % x == 0 or (k - 1) <= 1
  end
  true
end

while counter < 10001
  counter = counter + 1 if is_prime(i)
  i = i + 1 	
end

puts i - 1, counter