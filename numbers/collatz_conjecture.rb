class CollatzConjecture
  def self.steps(n)
    if n <= 0
      raise ArgumentError, "Only positive numbers are allowed"
    end

    steps = 0
    while n != 1 && n > 0
      steps += 1
      if n % 2 == 0
        n /= 2
      else
        n = 3 * n + 1
      end
    end
    steps
  end
end
