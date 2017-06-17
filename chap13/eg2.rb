class Die
  def roll # new method defined as roll
    @number_showing = 1 + rand(6) # instance variable assigned to the value of
    # random number.
  end
  def showing # new method defined as showing
    @number_showing # instance variable which is returned when an instance of
    # Die calls the showing method
  end
end
p Die.new.showing # returns nil because roll has not been called so the
# instance variable contains nothing
die = Die.new # die is assigned to a new instance of the Die class
die.roll # call method roll on die - this will set the instance variable
# (@number_showing) to the value of the random number
puts die.showing # calls the method showing which returns the value assigned
# to @number_showing
puts die.showing
die.roll
puts die.showing
puts die.showing
