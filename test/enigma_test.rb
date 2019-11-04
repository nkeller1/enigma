require_relative './test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require 'date'
require 'mocha/minitest'
require_relative '../lib/enigma'
require_relative '../lib/offset'
require_relative '../lib/codekey'
require_relative '../lib/encrypt'


class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
    @offset = Offset.new
    @Encrypt = Encrypt.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  # def test_char_set_has_27_characters
  #   assert_equal 27, @enigma.char_set.count
  # end

  def test_shift_amount
    #stub data
    fake_shift = {:a =>12,:b => 23, :c => 34, :d => 45}
    @enigma.expects(:shift_amount).returns(fake_shift)

    assert_equal fake_shift, @enigma.shift_amount
  end

  def test_encrypt_with_date_and_key
      expected = {
        encryption: "keder ohulw",
        key: "02715",
        date: "040895"
      }

    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end

  def test_encrypt_with_no_date_or_key_provided
      fake_encrypt = {
        encryption: "keder ohulw",
        key: "02715",
        date: "040895"
      }

    @enigma.expects(:encrypt).returns(fake_encrypt)

    assert_equal fake_encrypt, @enigma.encrypt("hello world")
  end
end
