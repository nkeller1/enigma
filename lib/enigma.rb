require 'date'

class Enigma
  attr_reader :char_set, :offset, :codekey

  def initialize
    @char_set = ("a".."z").to_a << " "
    @offset = Offset.new
    @codekey = Codekey.new
  end

  # def encrypt(message, key, date)
  # end

  def shift_amount
    key_value = @codekey.seperate_to_pairs
    offset = @offset.create_last_four_hash
    shift = key_value.merge(offset) do |key, old, new|
      old + new
    end
    shift
  end
end

# t = Time.now
# date = [t.day, t.month, t.year]

#
# CIPHER = [*?A..?Z], [*?a..?z]
#
# def caesar_cipher string, shift
#   string.tr CIPHER.join, CIPHER.map{ |ary| ary.rotate shift }.join
# end
#
# puts caesar_cipher 'ABCDEFGHIJKLMNOP', 3
