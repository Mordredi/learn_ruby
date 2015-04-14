class Array
  def sum
    if self.length == 0
      0
    else
      self.inject(:+)
    end
  end

  def square
    if self.length == 0
      self
    else
      self.map { |n| n**2 }
    end
  end

  def square!
     new_array = self.map! { |n| n**2 }
     new_array
  end

end