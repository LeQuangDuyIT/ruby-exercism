class Luhn
  def self.valid?(number)
    number = number.gsub(" ", "")
    if number.length < 2
      return false
    end

    only_digits = number.match?(/[^0-9]/)
    if only_digits
      return false
    end

    sum = 0
    number.reverse.each_char.with_index do |digit, index|
      digit = digit.to_i
      if index % 2 != 0
        digit *= 2
        if digit > 9
          digit -= 9
        end
      end
      sum += digit
    end
    sum % 10 == 0
  end
end