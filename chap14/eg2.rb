def compose(proc1, proc2) # double_then_square calls the method with the procs
  # double_it and square_it as arguments.
  Proc.new do |x| # creates a new proc piping in the variable x
    proc2.call(proc1.call(x)) # proc2 is calling proc1 passing
    # in the argument of 5 - effectively double_it(square_it(5))
  end
end

square_it = Proc.new do |x|
  x * x
end

double_it = Proc.new do |x|
  x + x
end

double_then_square = compose(double_it, square_it)
square_then_double = compose(square_it, double_it)

puts double_then_square.call(5)
puts square_then_double.call(5)
