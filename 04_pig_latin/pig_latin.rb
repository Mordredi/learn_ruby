def translate(word)

  array = word.split(" ")
  new_a = array.map do |w|
    if w.index(/[aeiou]/) == 0
      w << "ay"
    elsif w.start_with?("sch")
      l = w.slice!(0, 3)
      w << l << "ay"
    elsif w.start_with?("qu")
      l = w.slice!(0, 2)
      w << l << "ay"
    else
      l = w.slice!(0)
      if w.index(/[aeiou]/) == 0
        w << l << "ay"
      elsif w.start_with?("qu")
        m = w.slice!(0, 2)
        w << l << m << "ay"
      else
        m = w.slice!(0)
        if w.index(/[aeiou]/) == 0
          w << l << m << "ay"
        else
          n = w.slice!(0)
          w << l << m << n << "ay"
        end
      end
    end
  end
  new_a.join(" ")
end