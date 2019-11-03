class Encrypt
  attr_reader :char_set

  def initialize
    @char_set = ("a".."z").to_a << " "
    @enigma = Enigma.new
  end

  def encrypt_string(message, key)
    message_to_array = message.downcase.chars.map do |char|
      char.ord
    end
    shifted = message_to_array.map do |char|
      char + key
    end
    shifted.map do |char|
      char.chr
    end.join
  end

  # def map_offset_amount_to_char_set
  #   @char_set.map do |char|
  #
  #       @enigma.shift_amount[:a]
  #       @enigma.shift_amount[:b]
  #       @enigma.shift_amount[:c]
  #       @enigma.shift_amount[:d]
  #       @enigma.shift_amount.values.rotate!
  #       #call in index :a and rotate
  #       #find the letter index value in the alphabet and assign the shift amt to the
  #   end
  # end

end
