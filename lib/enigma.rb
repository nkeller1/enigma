require 'date'

class Enigma
  attr_reader :char_set

  def initialize
    @char_set = ("a".."z").to_a << " "
    @key = rand(10000..99999)

  end

  def encrypt(message, key, date)
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
