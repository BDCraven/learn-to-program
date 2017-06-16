puts "Hi, please can you tell me your first name?"
first_name = gets.capitalize.chomp
puts "And what is your middle name?"
middle_name = gets.capitalize.chomp
puts "And finally, please can I have your last name?"
last_name = gets.capitalize.chomp

if middle_name.empty?
  puts "Pleased to meet you #{first_name} #{last_name}!"
else
  puts "Pleased to meet you #{first_name} #{middle_name} #{last_name}"
end
