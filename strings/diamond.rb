class Diamond

  ALPHABEL = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

  def self.make_diamond(char)
    if !ALPHABEL.include?(char)
      return
    end

    if char == 'A'
      return "A\n"
    end

    length = (ALPHABEL.index(char) + 1) * 2 - 1
    centerIndex = length.div(2)

    diamond = "#{char}#{" " * (length-2)}#{char}"
    for i in 0..centerIndex-1
      row = ''
      for j in 0..length-1
        row += j==i+1 || j==length-i-2 ? ALPHABEL[centerIndex - i - 1] : " "
      end
      diamond = "#{row}\n#{diamond}\n#{row}"
    end

    "#{diamond}\n"

  end
end