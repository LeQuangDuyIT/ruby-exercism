class IsbnVerifier
  def self.valid?(string)

    if string[-1] != "X" && string[-1] != "0" && string[-1].to_i == 0
      return false
    end

    d = string.slice(0..(string.size - 2)).gsub("-","").chars.map do |number|
      if number != "0" && number.to_i == 0
        return false
      else
        number.to_i
      end
    end

    if d.size != 9
      return false
    end

    resultWithoutEndNum = d[0] * 10 + d[1] * 9 + d[2] * 8 + d[3] * 7 + d[4] * 6 + d[5] * 5 + d[6] * 4 + d[7] * 3 + d[8] * 2

    endNumValue = string[-1] == "X" ? 10 : string[-1].to_i
    return (resultWithoutEndNum + endNumValue) % 11 == 0
  end
end