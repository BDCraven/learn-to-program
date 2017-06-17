class Array
  def each_even(&was_a_block_now_a_proc) # the & tells the method not to ignore
    # the proc. each_even calls the block passed in with every element of the
    # array 
    is_even = true
    self.each do |object|
      if is_even
        was_a_block_now_a_proc.call(object)
      end
      is_even = !is_even
    end
  end
end

fruits = ["apple", "bad apple", "cherry", "durian"]
fruits.each_even do |fruit| # calls the method each_even on fruits and passes
  #the return values to fruit which then prints fruit.
  puts "Yum! I just love #{fruit} pies, don't you?"
end

[1,2,3,4,5].each_even do |odd_ball|
  puts "#{odd_ball} is NOT an even number!"
end
