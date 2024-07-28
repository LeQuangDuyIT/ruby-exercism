class Darts
  def initialize(x, y)
    @x = x.abs
    @y = y.abs

    @centrifugal = Math.sqrt(@x**2 + @y**2)
  end

  def score
    case @centrifugal
    when 0..1
      10
    when 1..5
      5
    when 5..10
      1
    else
      0
    end
  end
end
