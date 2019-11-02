class Codekey
  attr_reader :key

  def initialize
    @key = rand(10000..99999)
  end

  def seperate_number_to_pairs
    @key
    require "pry"; binding.pry
  end

end
