puts "Please tell me a year"
s_year = gets.chomp
puts "And an ending year"
e_year = gets.chomp
year = s_year.to_i
leap_years = ""
while year <= e_year.to_i
   if year % 4 == 0
    if year % 100 != 0 || year % 400 == 0
      leap_years << year.to_s + " "
    end
   end
   year = year + 1
 end

 puts "The leap years between #{s_year} and #{e_year} are: #{leap_years}"
