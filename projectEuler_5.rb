# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
  i = 2520
  array = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
  count = 0

  while count < 20
    array.each do |a|
      if i % a == 0
        count = count + 1
      else
        count = 0
        i = i + 1
      end  
    end
  end 
puts i




