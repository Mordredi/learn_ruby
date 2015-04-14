class Book
  def title=(title)
    @title = title
  end

  def title
    array = @title.split(" ")
    array.each do |w|
      if w == "the" || w == "a" || w == "an" || w == "and" || w == "in" || w == "of"
        if array.index(w) == 0
          w.capitalize!
        else
          w
        end
      else
        w.capitalize!
      end
    end
    @title = array.join(" ")
    @title
  end
end