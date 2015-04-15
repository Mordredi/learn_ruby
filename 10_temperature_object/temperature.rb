class Temperature

  attr_accessor :temp

  def initialize(temp)
    @temp = temp
  end

  def self.in_celcius(temp)
    @temp = temp
  end

  def self.in_fahrenheit(temp)
    @temp = temp
  end

  def to_fahrenheit
    if @temp.has_key?(:f)
      @temp[:f]
    elsif @temp.has_key?(:c)
      ((@temp[:c].to_f * 1.8) + 32).round(1)
    end
  end

  def to_celsius
    if @temp.has_key?(:c)
      @temp[:c]
    elsif @temp.has_key?(:f)
      ((@temp[:f].to_f - 32) / 1.8).round(1)
    end
  end
end

class Celcius < Temperature
end

class Fahrenheit < Temperature
end