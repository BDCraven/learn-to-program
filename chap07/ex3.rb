# puts "Hello deary what would you like to say to Grandma?"
# response = gets.chomp
#counter = 0
#while counter < 2
#  if response == "BYE"
#    puts "NO, NOT SINCE #{rand(21) + 1930}"
#    counter += 1
#  elsif response == response.upcase
#    puts "NO, NOT SINCE #{rand(21) + 1930}"
#    counter = 0
#  else
#    puts "HUH?! SPEAK UP, SONNY"
#    counter = 0
#  end
#  response = gets.chomp
#end

puts "Hello deary what would you like to say to Grandma?"
counter = 0
while true
  response = gets.chomp
  if counter == 2
    puts "Alright be on your way!"
    break
  elsif response == "BYE"
    puts "NO, NOT SINCE #{rand(21) + 1930}"
    counter += 1
  elsif response == response.upcase
    puts "NO, NOT SINCE #{rand(21) + 1930}"
    counter = 0
  else
    puts "HUH?! SPEAK UP, SONNY"
    counter = 0
  end
end
