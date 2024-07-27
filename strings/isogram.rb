class Isogram
  ALLOW_LOOP_CHARS = [" ", "-"]
  def self.isogram?(string)
    differentChars = []

    for i in 0..string.size-1
      next if ALLOW_LOOP_CHARS.include?(string[i])

      currentChar = string[i].downcase
      if differentChars.include?(currentChar)
        return false
      else
        differentChars.push(currentChar)
      end
    end
    true
  end
end