class Counter
  def initialize
    @count = 0
  end

  def add(num)
    "Please use an integer to define num"
      @count += num
    end

  def report
    return "Counted to #{@count} so far."
  end
end
