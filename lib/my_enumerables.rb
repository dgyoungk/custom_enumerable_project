module Enumerable
  # Your code goes here
  def my_each_with_index
    self.each_with_index { |element, idx| yield(element, idx) }
    return self
  end

  def my_select
    self.select { |element| yield(element) }
  end

  def my_all?
    self.all? { |element| yield(element) }
  end

  def my_any?
    self.any? { |element| yield(element) }
  end

  def my_none?
    self.none? { |element| yield(element) }
  end

  def my_count
    return self.size unless block_given?
    self.select { |element| yield(element) }.size
  end

  def my_map
    self.map { |element| yield(element) }
  end

  def my_inject(sum = 0)
    return self.inject { |total, element| yield(total, element) } + sum if sum > 1
    self.inject { |total, element| yield(total, element) }
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    self.each { |element| yield(element) }
    return self
  end
end
