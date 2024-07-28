FILES = {
  'iliad.txt' => "Achilles sing, O Goddess! Peleus' son;
      His wrath pernicious, who ten thousand woes
      Caused to Achaia's host, sent many a soul
      Illustrious into Ades premature,
      And Heroes gave (so stood the will of Jove)
      To dogs and to all ravening fowls a prey,
      When fierce dispute had separated once
      The noble Chief Achilles from the son
      Of Atreus, Agamemnon, King of men.",
  'midsummer-night.txt' => "I do entreat your grace to pardon me.
      I know not by what power I am made bold,
      Nor how it may concern my modesty,
      In such a presence here to plead my thoughts;
      But I beseech your grace that I may know
      The worst that may befall me in this case,
      If I refuse to wed Demetrius.",
  'paradise-lost.txt' => "Of Mans First Disobedience, and the Fruit
      Of that Forbidden Tree, whose mortal tast
      Brought Death into the World, and all our woe,
      With loss of Eden, till one greater Man
      Restore us, and regain the blissful Seat,
      Sing Heav'nly Muse, that on the secret top
      Of Oreb, or of Sinai, didst inspire
      That Shepherd, who first taught the chosen Seed"
}

class Grep
  def self.grep(pattern, flags, files)
    results = []
    files.each do |file|
      lines =  get_lines_to_search(file)
      matches = get_search_results(file, lines, pattern, flags)
      results+=matches
    end
    print_results(results, flags, files.size == 1)
  end

  def self.get_lines_to_search(file)
    FILES[file].split("\n").map do |line|
      line.strip
    end
  end

  def self.get_search_results(fileName, lines, pattern, flags)
    matches = []
    lines.each.with_index do |line, index|
      isMatch = if flags.include?("-i")
          line.downcase.include?(pattern.downcase) || pattern.downcase.include?(line.downcase)
        elsif flags.include?("-v")
          !line.include?(pattern) && !pattern.include?(line)
        elsif flags.include?("-x")
          line == pattern
        else
          line.include?(pattern) || pattern.include?(line)
        end

      if isMatch
        newMatch = [fileName, index + 1, line]
        matches.push(newMatch)
      end
    end
    matches
  end

  def self.print_results(results, flags, isSingleFile)
    finalResults = ""
    uniqFileNames = []

    results.each do |result|
      if flags.include?("-l")
        if !uniqFileNames.include?(result[0])
          finalResults += "#{result[0]}\n"
          uniqFileNames.push(result[0])
        end
      elsif flags.include?("-n")
        finalResults += isSingleFile ? "#{result[1]}:#{result[2]}\n" : "#{result[0]}:#{result[1]}:#{result[2]}\n"
      else
        finalResults += isSingleFile ? "#{result[2]}\n" : "#{result[0]}:#{result[2]}\n"
      end
    end

    finalResults.strip
  end
end

pattern = "Agamemnon"
flags = []
files = ["iliad.txt"]
expected = <<~EXPECTED.rstrip
  Of Atreus, Agamemnon, King of men.
EXPECTED

Grep.grep(pattern, flags, files)