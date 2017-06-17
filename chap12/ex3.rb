def roman_to_integer(roman)
  digit_vals = {"i" => 1,
                "v" => 5,
                "x" => 10,
                "l" => 50,
                "c" => 100,
                "d" => 500,
                "m" => 1000}
  total = 0
  prev = 0
  index = roman.length - 1 # 6
  while index >= 0
    c = roman[index].downcase # = x
    index = index -1 # reduce index by one
    val = digit_vals[c] # 10
    if !val # if this has no value/nil it will be true
      puts "This is not a valid roman numeral!"
      return
    end
    if val < prev
      val = val * -1 # e.g. an i before x reduces 10 to 9.
    else
      prev = val # assign value to prev
    end
      total = total + val
  end
  total
end

puts(roman_to_integer("mcmxcix"))
puts(roman_to_integer("CCCLXV"))
