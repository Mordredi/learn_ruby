class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    if @seconds < 60
      "00:00:#{padded(@seconds)}"
    else
      min = 0

      seconds = @seconds - 60
      min += 1
      "00:#{padded(min)}:#{padded(seconds)}"
    end
  end

  def padded(seconds)
    if seconds < 10
      "0#{seconds}"
    else
      "#{seconds}"
    end
  end

end