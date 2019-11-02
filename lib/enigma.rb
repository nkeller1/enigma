require 'date'

class Enigma
  attr_reader :char_set

  def initialize
    @char_set = ("a".."z").to_a << " "
    @codekey = Codekey.new
    @offset = Offset.new
  end

  def associate_pairs
    require "pry"; binding.pry
    @codekey.seperate_to_pairs
  end

  # def encrypt(message, key, date)
  # end

end

# CIPHER = [*?A..?Z], [*?a..?z]
#
# def caesar_cipher string, shift
#   string.tr CIPHER.join, CIPHER.map{ |ary| ary.rotate shift }.join
# end
#
# puts caesar_cipher 'ABCDEFGHIJKLMNOP', 3
