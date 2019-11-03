require 'date'

class Enigma
  attr_reader :offset, :codekey, :encrypt

  def initialize
    # @char_set = ("a".."z").to_a << " "
    @offset = Offset.new
    @codekey = Codekey.new
    @encrypt = Encrypt.new
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
    offset_rotate.rotate!
  end

  def encrypt(message)
    list = {}
    list[:encryption] = @encrypt.encrypt_string(message, rotate_by_offset_value[0])
    list[:key] = @codekey.key
    list[:date] = @offset.combine
    list
  end
end



# CIPHER = [*?A..?Z], [*?a..?z]
#
# def caesar_cipher string, shift
#   string.tr CIPHER.join, CIPHER.map{ |ary| ary.rotate shift }.join
# end
#
# puts caesar_cipher 'ABCDEFGHIJKLMNOP', 3
