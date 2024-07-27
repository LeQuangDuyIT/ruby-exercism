class Acronym
  def self.abbreviate(string)
    slices = string.split(/[\s-]+/)
    slices.map { |word| word[0].upcase }.join
  end
end