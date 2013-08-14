def Fibonacci(start, second, limit)
  sum = 0
  if second % 2 == 0 then
    sum += second
  end
  if start % 2 == 0 then
    sum += start
  end	
  i = start
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

