birth_dates = {}
File.read("birthdates.txt").each_line do |line|
  line = line.chomp # for each line of the text file the variable line is set
  # to point to that one line
  first_comma = 0
  while line[first_comma] != "," && first_comma < line.length # starting at
    # index 0 check if the line is a comma
    first_comma = first_comma + 1 # if the line is not a comma we add one to
    # the variable first_comma and the loop repeats to the next index character.
  end

  name = line[0..(first_comma -1)] # line index range from 0 incluidng the
  # last character at the end of the range. This is a comma so reduce index
  # by 1 to remove the comma.
  date = line[-11..-1] # count from end of index. -11 to catch all dates

  birth_dates[name] = date # add to hash with key of name and value of date
end
puts "Whoose birthday would you like to know?"
name = gets.chomp
date = birth_dates[name] # assign the variable date to the hash value
# corresponding with the name

if date == nil
  puts " Oooh, I don't know that one..."
else
  puts date
end
