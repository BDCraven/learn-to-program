class OrangeTree
  def initialize (name)
    @name = name
    @age = 0
    @height = 0
    @fruit_this_year = 0
  end
  def height
    @height
  end
  def one_year_passes
    if @age !=6
      @age = @age + 1
      @height += 1
      puts "A year drifts by and #{@name} has grown in height to #{@height} foot tall. I wonder if there is any fruit to eat..."
      if @age == 2
        @fruit_this_year = 1
      end
      if @age >=3 && @age !=4
        @fruit_this_year = 1
      elsif @age >= 4 && @age !=6
        @fruit_this_year = 3
      end
    else
      puts "Sad news, #{@name} has died of old age."
      exit
    end
  end
 def count_the_oranges
   if @fruit_this_year <= 0
     puts "There is no fruit on the tree."
   elsif @fruit_this_year == 1
     puts "You spy a single fruit. Would you like to pick it?"
   elsif @fruit_this_year >= 2
     puts "You spot a bumper crop of #{@fruit_this_year} fruits this year. Would you like to pick one?"
   end
 end
 def pick_the_oranges(num)
   if @fruit_this_year == 0
     "Puts despite your best efforts you find no fruit to pick this year."
   end
   if @fruit_this_year - num <= -1
     puts "You can only find #{@fruit_this_year} fruit(s). Would you like to pick them?"
   else
     @fruit_this_year -= 1
     puts "You enjoyed that delicious fruit. Would you like another?"
   end
 end
end
tree = OrangeTree.new("Fred")
tree.one_year_passes
tree.one_year_passes
tree.count_the_oranges
tree.pick_the_oranges(1)
tree.count_the_oranges
tree.one_year_passes
tree.one_year_passes
tree.count_the_oranges
tree.pick_the_oranges(1)
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes 
