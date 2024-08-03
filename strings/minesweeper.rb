class Minesweeper
  def self.annotate(input)
    return input if input.empty? || input.all?(&:empty?)

    rows = input.size
    cols = input.first.size
    output = Array.new(rows) { Array.new(cols, ' ') }

    directions = [
      [-1, -1], [-1, 0], [-1, 1],
      [0, -1],          [0, 1],
      [1, -1], [1, 0], [1, 1]
    ]

    (0...rows).each do |row|
      (0...cols).each do |col|
        if input[row][col] == '*'
          output[row][col] = '*'
        else
          mine_count = directions.count do |dx, dy|
            nr, nc = row + dx, col + dy
            nr.between?(0, rows - 1) && nc.between?(0, cols - 1) && input[nr][nc] == '*'
          end
          output[row][col] = mine_count.to_s if mine_count > 0
        end
      end
    end

    output.map(&:join)
  end
end