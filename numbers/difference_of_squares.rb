class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum
    sum = 0
    (1..@number).to_a.each do |num|
      sum += num
    end
    sum * sum
  end

  def sum_of_squares
    squares = 0
    (1..@number).to_a.each do |num|
      squares += num * num
    end
    squares
  end

  def difference
    square_of_sum - sum_of_squares
  end

end