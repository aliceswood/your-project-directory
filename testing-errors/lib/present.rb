class Present
  def wrap(gift)
    fail "A gift has already been wrapped." unless @gift.nil?
    @gift = gift
  end 

  def unwrap
    fail "No contents have been wrapped." if @contents.nil?
    return @contents
  end 
end