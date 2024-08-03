class ListOps
  def self.arrays(array)
    count = 0
    array.each { count += 1 }
    count
  end

  def self.reverser(array)
    reversed = []
    array.each { |element| reversed.unshift(element) }
    reversed
  end

  def self.concatter(array1, array2)
    concatenated = array1.dup
    array2.each { |element| concatenated.push(element) }
    concatenated
  end

  def self.mapper(array)
    mapped = []
    array.each { |element| mapped << yield(element) }
    mapped
  end

  def self.filterer(array, &block)
    filtered = []
    array.each { |element| filtered << element if block.call(element) }
    filtered
  end

  def self.sum_reducer(array)
    sum = 0
    array.each { |element| sum += element }
    sum
  end

  def self.factorial_reducer(array)
    factorial = 1
    array.each { |element| factorial *= element }
    factorial
  end
end
