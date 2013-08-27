def mult
  sum = ((1..999).find_all { |i| i % 5 == 0 or i % 3 == 0 }).reduce(:+)
  return sum 
end
puts mult 