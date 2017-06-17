class Integer
  def to_roman
    num = self
    thousands = (num / 1000)
    hundreds = (num % 1000 / 100)
    tens = (num % 100 / 10)
    ones = (num % 10 / 1)

    n_roman = "M" * thousands

    if hundreds == 9
      n_roman << "CM"
    elsif hundreds == 4
      n_roman << "CD"
    else
      n_roman << "D" * (num % 1000 / 500)
      n_roman << "C" * (num % 500 / 100)
    end

    if tens == 9
      n_roman << "XC"
    elsif tens == 4
      n_roman << "XL"
    else
      n_roman << "L" * (num % 100 / 50)
      n_roman << "X" * (num % 50 / 10)
    end

    if ones == 9
      n_roman << "IX"
    elsif ones == 4
      n_roman << "IV"
    else
      n_roman << "V" * (num % 10 / 5)
      n_roman << "I" * (num % 5)
    end
    n_roman
  end
end
p 1999.to_roman
p 3555.to_roman
p 2444.to_roman
p 2017.to_roman
