# Create MyList Class that has an instance variable @list.

class MyList

  def initialize(list)
    @list = list
  end

  def #each
    yield @list
  end
end