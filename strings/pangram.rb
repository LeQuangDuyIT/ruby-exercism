class Pangram
  ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

  def self.pangram?(sentence)
    differenceChars = ""
    sentence.chars.each do |char|
      next if !ALPHABET.include?(char.upcase)
      if !differenceChars.include?(char.upcase)
        differenceChars += char.upcase
      end
    end
    print differenceChars
    if differenceChars.size == ALPHABET.size
      true
    else
      false
    end
  end
end