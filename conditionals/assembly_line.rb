class AssemblyLine
  CARS_PER_HOUR = 221

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    successRate = 0
    if @speed >= 1 && @speed <= 4
      successRate = 1
    elsif @speed >= 5 && @speed <= 8
      successRate = 0.9
    elsif @speed == 9
      successRate = 0.8
    elsif @speed == 10
      successRate = 0.77
    end

    CARS_PER_HOUR * @speed * successRate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60.0).to_i
  end
end
