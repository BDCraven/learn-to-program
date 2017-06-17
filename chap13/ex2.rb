class Integer
  def factorial
    num = self
    if num < 0
      return "You can't take the factorial of a negative number!"
    end
    if num <= 1
      1
    else
      num * (num -1).factorial # num is being multiplied by what factorial
      # (num-1) evaluates
    end
  end
end
p 4.factorial
p 5.factorial
