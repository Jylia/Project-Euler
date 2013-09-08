  i = 600851475143
  lim = Math.sqrt(i).to_i
  answer = 0

  def prime(k)
    lim = Math.sqrt(k).to_i
	for i in 2..lim 
	  return false if k % i == 0
	end
  end

  for j in 3..lim 
	puts answer = j if i % j == 0 and prime(j)
end
 