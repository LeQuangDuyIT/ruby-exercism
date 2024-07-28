class Year
  def self.leap?(year)
    if divisible?(year, 4) && divisible?(year, 100) && divisible?(year, 400)
      return true
    end

    if divisible?(year, 4) && !divisible?(year, 100)
      return true
    end

    false
  end

  def self.divisible?(num1, num2)
    num1 % num2 == 0
  end
end