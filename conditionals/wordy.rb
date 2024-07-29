class WordProblem
  def initialize(problem)
    @problem = problem.gsub("What is ", "").gsub("?", "").split
  end

  def answer
    result = @problem[0].to_i
    i = 1
    while i < @problem.size
      if @problem[i] == "plus"
        i += 1
        result += @problem[i].to_i
      elsif @problem[i] == "minus"
        i += 1
        result -= @problem[i].to_i
      elsif @problem[i] == "multiplied"
        i += 2
        result *= @problem[i].to_i
      elsif @problem[i] == "divided"
        i += 2
        result /= @problem[i].to_i
      else
        raise ArgumentError
      end
      i += 1
    end
    return result
  end
end

problem = WordProblem.new("What is 1 plus 1?")
print problem.answer