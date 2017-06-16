def say_moo(number_of_times)
  puts "mooooooo..." * number_of_times
  "yellow submarine"
end
# say_moo(3)

#return_val = say_moo(2)
#puts return_val

x = say_moo(3) # assigning method to the variable calls the method and saves
# the return value.
puts "#{x.capitalize}, dude..." # puts is putting the return value of the
# method which is simply the last expression evaluated in the method.
puts "#{x}."
