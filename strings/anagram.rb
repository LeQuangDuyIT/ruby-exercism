class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(candidates)
    candidates.select do |candidate|
      candidate_downcase = candidate.downcase
      next if candidate_downcase == @word

      sorted_candidate = candidate_downcase.chars.sort
      sorted_word = @word.chars.sort

      sorted_candidate == sorted_word
    end
  end
end