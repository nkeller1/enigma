require_relative './test_helper'
require 'mocha/minitest'
require 'minitest/autorun'
require 'minitest/pride'



class EncryptTest < Minitest::Test

  def setup
    @encrypt = Encrypt.new
  end

  def test_it_exists
    assert_instance_of Encrypt, @encrypt
  end

  def test_char_set_has_27_characters
    assert_equal 27, @encrypt.char_set.count
  end

  def test_encrypt_string
    assert_equal "ifmmp", @encrypt.encrypt_string("hello", 1)
    assert_equal "c", @encrypt.encrypt_string("h", 99)
    assert_equal "c.", @encrypt.encrypt_string("h.", 99)
  end

  # def test_encrypt_string
  #   assert_equal "ifmmp", @encrypt.encrypt_string("hello", 1)
  # end
end
