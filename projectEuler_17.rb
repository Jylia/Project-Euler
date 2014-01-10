def number_to_words number
  hash = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine",
           10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen",
           17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "forty",50 => "fifty", 60 => "sixty",
           70 => "seventy", 80 => "eighty", 90 => "ninety"}
  
  hash[number]
end


def words
  array = []
  for number in 1..1000 do 
    if number < 21 
      array.push(number_to_words(number))
    end
    
    if (number > 20) && (number < 100)
      array.push([number_to_words(number.divmod(10).first*10), number_to_words(number % 10)])
    end 
    
    if (number == 100)
      array.push('one hundred')
    end 
    
    if (number > 100) && (number < 200)
      array.push([number_to_words(number.divmod(100).first), 'hundred and ', number_to_words(number.divmod(10).first%10*10), number_to_words(number.divmod(100).last%10)])
    end	

    if (number == 200)||(number == 300)||(number == 400)||(number == 500)||(number == 600)||(number == 700)||(number == 800)||(number == 900)
      array.push([number_to_words(number.divmod(100).first), 'hundreds'])
    end 

    if (number > 200) && (number < 1000) && (number != 300) && (number != 400) && (number != 500) && (number != 600) && (number != 700) && (number != 800) && (number != 900)
      array.push([number_to_words(number.divmod(100).first), 'hundreds and ', number_to_words(number.divmod(10).first%10*10), number_to_words(number.divmod(100).last%10)])
    end	

    if (number == 1000)
      array.push('one thousand')
    end	
  end

  array.each do |elem|
    puts elem.chars.count 
  end
end	

words

