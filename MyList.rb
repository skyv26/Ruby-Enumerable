# Create MyList Class that has an instance variable @list.
require_relative 'MyEnumerable'

class MyList
  include MyEnumerable
  def initialize(*args)
    @list = args
  end

  def each
    # yield @list
    @list.each { |value| yield value if block_given? }
  end
end

# list = MyList.new(1, 2, 3, 4)

# list.all? { |e| e < 5 }
# # => true

# list.all? { |e| e > 5 }
#  # => false

# list.any? { |e| e == 2 }
#  # => true

# list.any? { |e| e == 5 }
#  # => false

# list.filter &:even?
#   # > [2,4]
