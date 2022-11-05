module MyEnumerable
  def all?
    # return true when none of the collection members are false or ni.
    each { |e| return false unless yield(e) }
    true
  end

  def any?
    each { |e| return true if yield(e) }
    false
  end

  def filter
    arr = []
    each { |e| arr.push(e) if yield(e) }
    arr
  end
end
