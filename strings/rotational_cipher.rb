class RotationalCipher

  ALPABET = ('A'..'Z').to_a

  def self.rotate(text, shift)
    rotateArray = text.chars.map do |char|
      if is_alphabet?(char)
        rotatedChar = rotate_char(char, shift)
        unless is_uppercase?(char)
          rotatedChar = rotatedChar.downcase
        end
        rotatedChar
      else
        char
      end
    end
    rotateArray.join
  end

  def self.rotate_char(char, shift)
    ALPABET[(ALPABET.index(char.upcase) + shift) % ALPABET.size]
  end

  def self.is_alphabet?(char)
    char.match(/[A-Za-z]/)
  end

  def self.is_uppercase?(char)
    char.match(/[A-Z]/)
  end
end

RotationalCipher.rotate("O M G", 5)