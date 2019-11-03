class Encrypt
  attr_reader :char_set

  def initialize
    @char_set = ("a".."z").to_a << " "
  end

  def encrypt_string(message, key)
    # key = rotate_by_offset_value[0]
    message_to_array = message.downcase.chars.map { |char| char.ord }
    shifted_message = message_to_array.map do |char|
      char + key
    end
    shifted_message.map { |char| char.chr }.join
  end
  #i am trying to match the key value in encrypt_string to the rotating
  # rotate_by_offset_value method below. Hoping the array just keeps rotating
  #and assigning the value to the argument.

  # def rotate_by_offset_value
  #   offset_rotate = @enigma.shift_amount.values
  #   require "pry"; binding.pry
  #   offset_rotate.rotate!
  # end

  def rotate_char_set
    #probably can use map here
    ord_set = []
    @char_set.each do |char|
      ord_set << char.ord
    end
    ord_set.rotate!
  end
end
