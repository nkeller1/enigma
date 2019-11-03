require_relative './test_helper'
require 'mocha/minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/enigma'
require_relative '../lib/encrypt'
require_relative '../lib/offset'
require_relative '../lib/codekey'

class EncryptTest < Minitest::Test

  def setup
    @encrypt = Encrypt.new
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Encrypt, @encrypt
  end

  def test_char_set_has_27_characters
    assert_equal 27, @encrypt.char_set.count
  end

  def test_map_offset_amount_to_char_set
    skip
    assert_equal "", @encrypt.map_offset_amount_to_char_set
  end

  def test_encrypt_string
    assert_equal "ifmmp", @encrypt.encrypt_string("hello", 1)
  end


end
