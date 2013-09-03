  a = [0, 1]
  sum = 0
  loop do
    break if (a[0] + a[1] > 4000000) 
    third = a[0] + a[1]
	sum += third if third % 2 == 0
	a[0] = a[1]
    a[1] = third  
  end
  puts sum

