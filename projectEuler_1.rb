def mult(start, limit)
  sum = 0
  for i in start..limit do
    if (i % 3 == 0)||(i % 5 == 0) then
	  sum += i
	end
  end
  return sum  
end

puts mult(1, 999)
