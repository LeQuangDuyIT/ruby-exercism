class Raindrops
  def self.convert(number)
    raindropSounds=''

    if (!divisible(number, 3) && !divisible(number, 5) && !divisible(number, 7))
      return "#{number}"
    end

    if divisible(number, 3)
      raindropSounds += "Pling"
    end
    if divisible(number, 5)
      raindropSounds += "Plang"
    end
    if divisible(number, 7)
      raindropSounds += "Plong"
    end

    print raindropSounds
    return raindropSounds
  end

  def self.divisible?(num1, num2)
    num1 % num2 == 0
  end
end

Raindrops.convert(34)