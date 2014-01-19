  i = 600851475143
  lim = Math.sqrt(i).to_i
  answer = 0

  def prime(k)
    lim = Math.sqrt(k).to_i
	  for i in 2..lim 
	    return false if k % i == 0
	  end
  end

  beginning_time = Time.now
  (3..lim).each do |j|
    puts answer = j if i % j == 0 and prime(j)


end
end_time = Time.now
puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
 