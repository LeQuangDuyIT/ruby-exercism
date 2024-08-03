TWELVE_DAYS = {
  '1' => ['first', 'a Partridge in a Pear Tree'],
  '2' => ['second', 'two Turtle Doves'],
  '3' => ['third', 'three French Hens'],
  '4' => ['fourth', 'four Calling Birds'],
  '5' => ['fifth', 'five Gold Rings'],
  '6' => ['sixth', 'six Geese-a-Laying'],
  '7' => ['seventh', 'seven Swans-a-Swimming'],
  '8' => ['eighth', 'eight Maids-a-Milking'],
  '9' => ['ninth', 'nine Ladies Dancing'],
  '10' => ['tenth', 'ten Lords-a-Leaping'],
  '11' => ['eleventh', 'eleven Pipers Piping'],
  '12' => ['twelfth', 'twelve Drummers Drumming'],
}

class TwelveDays
  def self.song
    song = []
    TWELVE_DAYS.each do |number, content|
      song_line = "On the #{content[0]} day of Christmas my true love gave to me: "
      for i in number.to_i.downto(1)
        day = i.to_s
        if number == "1"
          song_line += "#{TWELVE_DAYS[day][1]}."
        else
        song_line += i != 1 ? "#{TWELVE_DAYS[day][1]}, " : "and #{TWELVE_DAYS[day][1]}."
        end
      end
      song_line += "\n"
      song << song_line
    end
    song.join("\n")
  end
end

print TwelveDays.song