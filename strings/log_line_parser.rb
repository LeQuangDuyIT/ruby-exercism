class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    start_index = @line.index(']:') + 2
    @line.slice(start_index, @line.size).strip
  end

  def log_level
    end_index = @line.index(']:') - 1
    log_level = @line.slice(1, end_index)
    log_level.downcase
  end

  def reformat
    slices = @line.split(']: ')
    message = slices[1].strip
    log_level = slices[0].slice(1..-1).downcase
    "#{message} (#{log_level})"
  end
end