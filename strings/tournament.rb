class Tournament
  def self.tally(data)
    lines = data.split("\n")
    teams = {}

    lines.each do |line|
      team1, team2, result = line.split(';')

      if !teams.include?(team1)
        teams[team1] = { MP: 0, W: 0, D: 0, L: 0, P: 0 }
      end

      if !teams.include?(team2)
        teams[team2] = { MP: 0, W: 0, D: 0, L: 0, P: 0 }
      end

      teams[team1][:MP] += 1
      teams[team2][:MP] += 1


      case result
        when "win"
          teams[team1][:W] += 1
          teams[team2][:L] += 1
          teams[team1][:P] += 3
        when "draw"
          teams[team1][:D] += 1
          teams[team2][:D] += 1
          teams[team1][:P] += 1
          teams[team2][:P] += 1
        when "loss"
          teams[team1][:L] += 1
          teams[team2][:W] += 1
          teams[team2][:P] += 3
      end

    end

    sorted_teams = teams.sort_by do |team, stats|
      [-stats[:P], -stats[:W], -stats[:D], stats[:L], team]
    end

    table = "Team                           | MP |  W |  D |  L |  P\n"
    sorted_teams.each do |team, stats|
      table += format("%-30s | %2d | %2d | %2d | %2d | %2d\n",
                      team, stats[:MP], stats[:W], stats[:D], stats[:L], stats[:P])
    end

    puts table
    table
  end
end