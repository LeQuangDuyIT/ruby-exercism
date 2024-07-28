class SpaceAge
  EARTH_YEAR_IN_SECONDS = 31_557_600.0

  def initialize(seconds)
    @seconds = seconds
  end

  def get_ages(orbital_period)
    (@seconds / (EARTH_YEAR_IN_SECONDS * orbital_period)).round(2)
  end

  def on_earth
    get_ages(1)
  end

  def on_mercury
   get_ages(0.2408467)
  end

  def on_venus
    get_ages(0.61519726)
  end

  def on_mars
    get_ages(1.8808158)
  end

  def on_jupiter
    get_ages(11.862615)
  end

  def on_saturn
    get_ages(29.447498)
  end

  def on_uranus
    get_ages(84.016846)
  end

  def on_neptune
    get_ages(164.79132)
  end

end