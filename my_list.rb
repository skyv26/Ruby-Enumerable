require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*args)
    @list = args
  end

  def each
    @list.each { |value| yield value if block_given? }
  end
end
