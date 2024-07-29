class EliudsEggs
  def self.egg_count(number)
    binary = convert_to_binary!(number)
    print binary
    binary.reduce(0) do |acc, bit|
      acc + (bit == 1 ? 1 : 0)
    end
  end

  def self.convert_to_binary!(number)
    result = []
    while number >= 1 do
      result.unshift(number % 2)
      number = number / 2
    end
    result
  end

end

EliudsEggs.egg_count(16)