# Create MyList Class that has an instance variable @list.

class MyList

  def initialize(*args)
    @list = args
  end

  def each
    yield @list
  end
end

myObj = MyList.new(1, 2, 3, 4)
#<MyList:0x00005582d47bbce8 @list=[1, 2, 3, 4]
