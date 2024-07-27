class Complement
  COMPLEMENT = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(nucleotides)
    result = ""
    nucleotides.chars.each do |nu|
      if COMPLEMENT[nu]
        result += COMPLEMENT[nu]
      else
        return nil
      end
    end
    print result
    result
  end
end