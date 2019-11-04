require 'date'

class Enigma
  attr_reader :offset, :codekey, :encrypt

  def initialize(codekey = Codekey.new, encrypt = Encrypt.new)
    # @char_set = ("a".."z").to_a << " "
    @offset = Offset.new
    @codekey = codekey
    @encrypt = encrypt
  end

  def shift_amount
    key_value = @codekey.seperate_to_pairs
    offset = @offset.create_last_four_hash
    shift = key_value.merge(offset) do |key, old, new|
      old + new
    end
    shift
  end

  def rotate_by_offset_value
    offset_rotate = shift_amount.values
    # loop do
    offset_rotate.rotate!
    # until
    # end
    # or could enumerate shift_amount.values.map do |shift| shift (maybe i can rotate here)
  end

  def encrypt(message)
    list = {}
    list[:encryption] = @encrypt.encrypt_string(message, rotate_by_offset_value[0])
    list[:key] = @codekey.key.to_s
    list[:date] = @offset.combine.to_s
    list
  end
end
