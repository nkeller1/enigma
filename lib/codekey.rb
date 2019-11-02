class Codekey
  attr_reader :key

  def initialize
    @key = rand(10000..99999)
  end

  def a_set
    numbers = @key.to_s.split(//)
    numbers.reduce({}) do |hash, number|
    hash[:a] = numbers[0..1].join.to_i
    hash[:b] = numbers[1..2].join.to_i
    hash[:c] = numbers[2..3].join.to_i
    hash[:d] = numbers[3..4].join.to_i
    require "pry"; binding.pry
    hash
    end
  end

  def b_set
    numbers = @key.to_s.split(//)
    b = numbers[1..2].join
  end

  def c_set
    numbers = @key.to_s.split(//)
    c = numbers[2..3].join
  end

  def d_set
    numbers = @key.to_s.split(//)
    d = numbers[3..4].join
  end

end
