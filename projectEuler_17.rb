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
    
    if (number == 100)||(number == 200)||(number == 300)||(number == 400)||(number == 500)||(number == 600)||(number == 700)||(number == 800)||(number == 900)
      array.push([number_to_words(number.divmod(100).first), 'hundred'])
    end 

    if (number > 100) && (number < 1000) && (number != 100) && (number != 200) && (number != 300) && (number != 400) && (number != 500) && (number != 600) && (number != 700) && (number != 800) && (number != 900)
      if number.divmod(100).last < 21
        array.push([number_to_words(number.divmod(100).first), 'hundredand', number_to_words(number.divmod(100).last)])
      else
        array.push([number_to_words(number.divmod(100).first), 'hundredand', number_to_words(number.divmod(100).last.divmod(10).first*10), number_to_words(number.divmod(100).last.divmod(10).last)])
      end  
    end	   

    if (number == 1000)
      array.push('one thousand')
    end	
  end
  counter = 0
  new_array = []
  # puts array.to_s.split(//).gsub!(/\W+/, '')
  array.to_s.scan(/[[:print:]]/).join.split(//).reject { |s| /[^a-zA-Z]/ =~ s }.each do |elem|
    # elem = elem.gsub(/^[a-zA-Z]+$/, '')
    # elem =elem.gsub(/[\s+)(]/,"")
    new_array = new_array.push(elem) #if elem != ''
    # puts elem.gsub(/\W+/, '').gsub(/[\s+)(]/,"").split(//)
    # counter = counter + 1 
  end
  # puts new_array
  puts new_array.count
  # puts new_array
  puts 7*9+19+17
  # new_array.each do |elem|
  #   # new_array = new_array.push(elem.gsub(/\W+/, '').gsub(/[\s+)(]/,"").split(//))
  #   # puts elem.gsub(/\W+/, '').gsub(/[\s+)(]/,"").split(//)
  #   counter = counter + 1 
  #   puts elem
  # end

  # puts counter
end	

words
# puts 123.divmod(100).last
