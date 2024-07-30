class BeerSong
  def self.recite(number_of_beers, number_of_lines)
    song = ''
    while number_of_lines > 0
      song += "#{number_of_beers == 0 ? 'No more' : number_of_beers} bottle#{number_of_beers != 1 ? 's' : ''} of beer on the wall, #{number_of_beers == 0 ? 'no more' : number_of_beers} bottle#{number_of_beers != 1 ? 's' : ''} of beer.\n"
      if number_of_beers > 0
        song += "Take #{number_of_beers > 1 ? 'one' : 'it'} down and pass it around, #{number_of_beers - 1 == 0 ? 'no more' : number_of_beers - 1} bottle#{number_of_beers - 1 != 1 ? 's' : ''} of beer on the wall.\n"
      else
        song += "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
      end
      if number_of_lines > 1
        song += "\n"
      end
      number_of_beers -= 1
      number_of_lines -= 1
    end
    print song
    song
  end
end