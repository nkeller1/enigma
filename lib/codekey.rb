class Codekey
  attr_reader :key

  def initialize(key = rand(10000..99999))
    @key = key
  end

  def seperate_to_pairs(key = rand(10000..99999))
    numbers = key.to_s.split(//)
    numbers.reduce({}) do |pair, number|
    pair[:a] = numbers[0..1].join.to_i
    pair[:b] = numbers[1..2].join.to_i
    pair[:c] = numbers[2..3].join.to_i
    pair[:d] = numbers[3..4].join.to_i

    pair
    end
  end
end
