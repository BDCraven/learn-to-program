def english_number(number)
  if number < 0
    return "Please enter a number that isn't negative."
  end
  if number == 0
    return "zero"
  end

  num_string = ""

  ones_place = ["one", "two", "three", "four", "five", "six", "seven",
  "eight", "nine"]

  tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty",
  "seventy", "eighty", "ninety"]

  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen",
  "sixteen", "seventeen", "eighteen", "nineteen"]

  left = number #1111731
  write = left/1000000
  left = left - write*1000000

  if write > 0
    million = english_number(write)
    num_string = num_string + million + " million"
    if left > 0
      num_string = num_string + " "
    end
  end

  write = left/10000
  left = left - write*10000

  if write > 0
    ten_thousands = english_number(write)
    num_string = num_string + ten_thousands + " thousand"
    if left > 0
      num_string = num_string + " "
    end
  end

  write = left/1000 # 3
  left = left - write*1000 # 221

  if write > 0
    thousands = english_number(write)
    num_string = num_string + thousands + " thousand"
    if left > 0
      num_string = num_string + " "
    end
  end

  write = left/100 #32
  left = left - write*100

  if write > 0
    hundreds = english_number(write)
    num_string = num_string + hundreds + " hundred"
    if left > 0
      num_string = num_string + " "
    end
  end

  write = left/10
  left = left - write*10

  if write > 0
    if ((write ==1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    if left > 0
      num_string = num_string + "-"
    end
  end
  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  num_string
end

bottles = 5
while bottles > 2
  puts "#{english_number(bottles).capitalize} bottles of beer on the wall. #{english_number(bottles).capitalize} bottles of beer."
  puts "Take one down and pass it around. #{english_number(bottles -1).capitalize} bottles of beer on the wall."
  bottles -= 1
end
puts "#{english_number(bottles).capitalize} bottles of beer on the wall. #{english_number(bottles).capitalize} bottles of beer."
puts "Take one down and pass it around. #{english_number(bottles -1).capitalize} bottle of beer on the wall."
puts "One bottle of beer on the wall. One bottle of beer."
puts "Take it down and pass it around. No more bottles of beer on the wall."
