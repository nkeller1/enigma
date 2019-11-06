require 'date'

class Offset
  attr_reader :now

  def initialize(now = Time.new)
    @now = now
  end
  # 
  # def useable_format(now = Time.new)
  #   collect_day = now.day.to_s.rjust(2, "0")
  #   collect_month = now.month.to_s.rjust(2, "0")
  #   collect_year = now.year.to_s[2..4]
  # end


  def combine(now = Time.new)
    collect_day = now.day.to_s.rjust(2, "0")
    collect_month = now.month.to_s.rjust(2, "0")
    collect_year = now.year.to_s[2..4]
    (collect_day + collect_month + collect_year).to_i
  end

  def square_date
    combine * combine
  end

  def take_last_four
    square_date % 10000
  end

  def split_last_four
    numbers = take_last_four.to_s.split(//)
  end

  def create_last_four_hash
    split = {
      :a => split_last_four[0].to_i,
      :b => split_last_four[1].to_i,
      :c => split_last_four[2].to_i,
      :d => split_last_four[3].to_i
    }
  end
end
