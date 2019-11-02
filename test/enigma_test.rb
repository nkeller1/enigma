require_relative './test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/enigma'
require 'date'
require 'mocha/minitest'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_char_set_has_27_characters
  
    assert_equal 27, @enigma.char_set.count
    # assert_equal key, @enigma.key
  end

  def test_encrpt
    skip
      expected = {
        encryption: "keder ohulw",
        key: "02715",
        date: "040895"
      }

    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end
end


# enigma.encrypt("hello world", "02715", "040895")
#=>
#   {
#     encryption: "keder ohulw",
#     key: "02715",
#     date: "040895"
#   }
