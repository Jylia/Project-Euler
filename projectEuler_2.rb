def Fibonacci(start, second, limit)
  sum = 0
  a = [start, second, start + second]
  a.each do |ach| 
    if ach % 2 == 0 then
	  sum += ach
	end
  end	

  loop do
    third = start + second
    if third % 2 == 0 then
      sum += third
	end
    start = second
    second = third
    if third > limit then break end 
  end
  return sum  
end

puts Fibonacci(1, 2, 4000000)

