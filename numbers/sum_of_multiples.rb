class SumOfMultiples
  def initialize(*itemValues)
    @itemValues = itemValues
  end

  def to(level)
    sum = 0
    uniq_multiples = []
    @itemValues.each do |itemValue|
      for i in 1..level
        multiple = itemValue * i
        if (!uniq_multiples.include?(multiple) && multiple < level)
          uniq_multiples << multiple
          sum += multiple
        end
      end
    end
    sum
  end
end