def ask(question)
  while true
    puts question
    reply = gets.chomp.downcase
    # if (reply == "yes" || reply == "no")
    if reply == "yes"
      return true # exits the method and returns true
        # answer = true
    end
    if reply == "no"
      return false # exits the method and returns true
        # answer = false
    end
      # break
    # else
      puts "Please answer 'yes' or 'no'."
  end
end
  # answer # This is what we return (true or false)
# end
puts "Hello, and thank you for..."
puts

ask "Do you like eating tacos?" # Ignore this return value
ask "Do you like eating burritos?" # And this one
wets_bed = ask "Do you wet the bed?" # Saves the return value of the method to
# the variable wets_bed
ask "Do you like eating chimichangas?"
ask "Do you like eating sopapillas?"
puts "Just a few more questions..."
ask "Do you like drinking horchata?"
ask "Do you like eating flautas?"

puts
puts "DEBRIEFING:"
puts "Thank you for"
puts
puts wets_bed # puts the variable referring to the return value.
