class FlattenArray
  def self.flatten(array)
    result = []

    array.each do |element|
      if element.is_a?(Array)
        result.concat(flatten(element))
      elsif !element.nil?
        result << element
      end
    end

    result
  end
end
