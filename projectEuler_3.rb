def primes(numb)
  i = (Math.sqrt(numb) - 1).to_int
  loop do
    if (numb % i == 0) then
	    break
	else if isPrime(i - 1) then
	  i = i - 1 end
	end	
	  puts i
  end
  return i
end
 
def isPrime(x)
  for i in 2..(x-1) do
    if ((x % i) == 0 ) then 
	  return true
    end	
  end
end
 
puts primes(600851475143)

