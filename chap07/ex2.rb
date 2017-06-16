#puts "Hello deary what would you like to say to Grandma?"
#response = gets.chomp
#while response != "BYE"
#  if response == response.upcase
#    puts "NO, NOT SINCE #{rand(21) + 1930}"
#  else
#    puts "HUH?! SPEAK UP, SONNY"
#  end
#  response = gets.chomp
#end


puts "Hello deary what would you like to say to Grandma?"
while true
  response = gets.chomp
  if response == "BYE"
    break
  elsif response == response.upcase
    puts "NO, NOT SINCE #{rand(21) + 1930}"
  else
    puts "HUH?! SPEAK UP, SONNY"
  end
end
