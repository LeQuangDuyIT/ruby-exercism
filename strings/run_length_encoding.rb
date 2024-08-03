class RunLengthEncoding
  def self.encode(str)
    return "" if str.empty?

    input = str.chars
    output = ""
    while input.size > 0
      char = input[0]
      i = 0
      while i + 1 < input.size && input[i + 1] == char
        i += 1
      end
      output += i + 1 > 1 ? (i + 1).to_s + char : char
      input = input[(i + 1)..-1]
    end
    output
  end

  def self.decode(str)
    return "" if str.empty?

    output = ""
    i = 0
    while i < str.length
      if str[i].match?(/\d/)
        num_str = ""
        while i < str.length && str[i].match?(/\d/)
          num_str += str[i]
          i += 1
        end
        count = num_str.to_i
        char = str[i]
        output += char * count
      else
        output += str[i]
      end
      i += 1
    end
    output
  end
end


