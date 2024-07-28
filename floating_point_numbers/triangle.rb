class Triangle
  def initialize(edges)
    @a = edges[0]
    @b = edges[1]
    @c = edges[2]
  end

  def validate?
    @a > 0 && @b > 0 && @c > 0 && @a + @b > @c && @a + @c > @b && @b + @c > @a
  end

  def equilateral?
    validate? && @a == @b && @b == @c
  end

  def isosceles?
    validate? && (@a == @b || @b == @c || @a == @c)
  end

  def scalene?
    validate? && !(equilateral? || isosceles?)
  end
end