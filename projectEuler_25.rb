# The Fibonacci sequence is defined by the recurrence relation:
# Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
# Hence the first 12 terms will be:
# F1 = 1
# F2 = 1
# F3 = 2
# F4 = 3
# F5 = 5
# F6 = 8
# F7 = 13
# F8 = 21
# F9 = 34
# F10 = 55
# F11 = 89
# F12 = 144
# The 12th term, F12, is the first term to contain three digits.
# What is the first term in the Fibonacci sequence to contain 1000 digits?

def fibonacci number
  i = 0
  f_cuurent = 0
  f_prev = 1
  while i < number
    f_middle = f_cuurent
	f_cuurent = f_prev
	f_prev = f_middle + f_prev
	i = i + 1 
  end	
  f_cuurent
end	

def digits_count number
  number.to_s.chars.count	
end	

i = 1

while digits_count(fibonacci(i)) < 1000
  digits_count(fibonacci(i))	
  i = i + 1
end  

p i