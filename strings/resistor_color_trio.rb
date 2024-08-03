class ResistorColorTrio
  COLOR_CODES = {
    "black" => 0,
    "brown" => 1,
    "red" => 2,
    "orange" => 3,
    "yellow" => 4,
    "green" => 5,
    "blue" => 6,
    "violet" => 7,
    "grey" => 8,
    "white" => 9
  }.freeze

  def initialize(colors)
    @colors = colors
  end

  def label
    value = (COLOR_CODES[@colors[0]] * 10 + COLOR_CODES[@colors[1]]) * (10**COLOR_CODES[@colors[2]])
    unit = if value >= 1000
             value /= 1000
             "kiloohms"
           else
             "ohms"
           end

    "Resistor value: #{value} #{unit}"
  end
end