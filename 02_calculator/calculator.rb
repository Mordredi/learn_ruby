def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(array)
  if array.length > 0
    array.inject(:+)
  else
    0
  end
end

def multiply(*nums)
  nums.inject(:*)
end