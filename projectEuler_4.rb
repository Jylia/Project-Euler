arr = []
  for j in 100..999
    for i in 100..999
	  a = i * j
	  if a.to_s.reverse! == a.to_s then 
	    arr << a
	  end
	end
  end 
puts arr.max

