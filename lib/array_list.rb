# Implementation of a list using a Native array --> ruby does this automatically

class ArrayList
  def initialize
    @storage = [0,0,0,0,0,0,0,0,0,0] #native array: fixed size, indexing on....
    @size = 0
  end

  # Adds _value_ at the end of the list
  def add(value)
    @storage[@size] = value
    @size += 1
  end

  # Deletes the _last_ value in the array
  def delete
    raise "bad things" if @size == 0
    # @storage[@size] = 0  don't need this line because all that really matters is what I think the size is
    @size -= 1
  end

  def include?(key)
    @size.times do |i|
      return true if @storage[i] == key
    end
      return false
  end

  def size
    return @size
  end

  def max
    raise "bad things" if @size == 0
    @max = @storage[0]
    @size.times do |i|
        if @storage[i] > @max
          @max = storage[i]
        end
      end
    return @max
  end

  def to_s
    
  end
end
