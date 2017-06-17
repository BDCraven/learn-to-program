class Die
  def roll
    1 + rand(6)
  end
end

dice = [Die.new, Die.new] # create a new array containing two new instances
# of the class Die (these will just be new objects of Die, reflected
# by id numbers) and assign to the variable dice.
# p dice => [#<Die:0x007f95ad01ba18>, #<Die:0x007f95ad01b9f0>]
dice.each do |die| # for each element in dice
  puts die.roll # call the element on the method roll which will return the
  # random number which is then putsed.
end
