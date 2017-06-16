def convert_roman(num)
  roman = ""
  roman = roman + "M" * (num / 1000) # 1999 divided by 1000 = 1 to M to add
  roman = roman + "D" * (num % 1000 / 500) # 1999 % 1000 is 999 (the remainder
  # of the integer). 999 divided by 500 is 1 so 1 D to add.
  roman = roman + "C" * (num % 500 / 100)
  roman = roman + "L" * (num % 100 / 50)
  roman = roman + "X" * (num % 50 / 10)
  roman = roman + "V" * (num % 10 / 5)
  roman = roman + "I" * (num % 5 / 1)
  # roman
end
puts(convert_roman(1999))
# convert_roman(1999)
