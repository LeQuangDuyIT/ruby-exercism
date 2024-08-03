class Atbash
  ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

  def self.encode(string)
    plaintext = string.downcase.gsub(/[^a-z0-9]/, '')
    ciphertext = ''
    part = ''

    plaintext.each_char do |char|
      if ALPHABET.include?(char)
        current_index = ALPHABET.index(char)
        converted_index = 25 - current_index
        part += ALPHABET[converted_index]
      else
        part += char
      end

      if part.length == 5
        ciphertext += "#{part} "
        part = ''
      end
    end

    ciphertext += part unless part.empty?
    ciphertext.strip
  end

  def self.decode(string)
    ciphertext = string.downcase.gsub(/\s+/, '')
    plaintext = ''

    ciphertext.each_char do |char|
      if ALPHABET.include?(char)
        current_index = ALPHABET.index(char)
        converted_index = 25 - current_index
        plaintext += ALPHABET[converted_index]
      else
        plaintext += char
      end
    end

    plaintext.strip
  end

end
