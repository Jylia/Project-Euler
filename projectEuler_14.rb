# The following iterative sequence is defined for the set of positive integers:
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
# Using the rule above and starting with 13, we generate the following sequence:
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers
# finish at 1.
# Which starting number, under one million, produces the longest chain?
# NOTE: Once the chain starts the terms are allowed to go above one million.

def build_chain number
  chain = [number]	
  while number != 1 
  	(number % 2 == 0) ? (number = number / 2) : (number = number * 3 + 1) 
    chain = chain.push(number)
  end
  chain	
end	

array = []

(1..1000000).each do |elem|
  array = array.push(build_chain(elem).count)
end	

beginning_time = Time.now
p array.each_with_index.max.last + 1
end_time = Time.now
puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"