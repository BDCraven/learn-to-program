class Die
  def initialize # initialize is automatically called when a new instance
    # of Die is created with Die.new. The method calls the roll method and
    # the instance variable is assigned a random value.
    roll
  end
  def roll
    @number_showing = 1 + rand(6)
  end
  def showing
    @number_showing
  end
  def cheat(num)
    if (1..6).include?(num)
      @number_showing = num
    else
      puts "Please enter a number between 1 - 6 if you want to cheat."
    end
  end

end
puts Die.new.showing
die = Die.new
die.roll
puts die.showing
die.cheat(7)
puts die.showing
