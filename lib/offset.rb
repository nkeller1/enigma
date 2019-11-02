require 'date'

class Offset
  attr_reader :now

  def initialize
    @now = Time.new
  end

  def collect_day
    @now.day.to_s.rjust(2, "0")
  end

  def collect_month
    @now.month.to_s.rjust(2, "0")
  end

  def collect_year
    @now.year.to_s[2..4]
  end

  def combine
    collect_day + collect_month + collect_year
  end

  def square_date
    square = combine.to_i * combine.to_i
    square.to_s
  end

  def take_last_four
    require "pry"; binding.pry
    4.times
  end


end

# t = Time.now
# date = [t.day, t.month, t.year]
