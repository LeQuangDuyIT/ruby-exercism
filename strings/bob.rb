class Bob
  def self.hey(remark)
    @remark = remark

    if is_asking? && is_shouting?
      "Calm down, I know what I'm doing!"
    elsif is_asking?
      "Sure."
    elsif is_shouting?
      "Whoa, chill out!"
    elsif is_silence?
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end

  def self.is_asking?
    @remark.strip.end_with?("?")
  end

  def self.is_shouting?
    @remark.match(/[A-Z]/) && @remark == @remark.upcase
  end

  def self.is_silence?
    @remark.strip.empty?
  end
end