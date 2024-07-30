class PerfectNumber
  def self.classify(number)
    raise RuntimeError, "Number must be positive" if number <= 0

    aliquot_sum = (1...number).select { |i| number % i == 0 }.sum

    if aliquot_sum == number
      'perfect'
    elsif aliquot_sum > number
      'abundant'
    else
      'deficient'
    end
  end
end