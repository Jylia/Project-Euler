#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#a2 + b2 = c2
#For example, 32 + 42 = 9 + 16 = 25 = 52.
#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

for a in 1..1000
  for b in a..1000 do
    c = 1000 - a - b
    break if ((a*a + b*b) == c*c)
  end
  break if ((a*a + b*b) == c*c)
end
puts a*b*c
