def echo(string)
  "#{string}"
end

def shout(string)
  "#{string.upcase}"
end

def repeat(string, num=1)
  num.times { |string| print string, " " }
end

def start_of_word(string, num)
  "#{string[0, num]}"
end

def first_word(string)
  "#{string.split(" ").first}"
end

def titleize(word)
  array = word.split(" ")
  array.each do |w|
    if array.index(w) == 0
      w.capitalize!
    elsif w == "and" || w == "the" || w == "over"
      w
    else
      w.capitalize!
    end
  end
  array.join(" ")
end

