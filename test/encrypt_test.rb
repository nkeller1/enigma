require_relative './test_helper'
require 'mocha/minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/encrypt'


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
  end
  # 
  # def test_rotate_by_offset_value
  #   #stub
  #   # fake_rotate = [1,2,3,4]
  #   # @encrypt.expects(:rotate_by_offset_value).returns(fake_rotate)
  #   assert_equal 'fake_rotate', @encrypt.rotate_by_offset_value
  # end

  def test_rotate_char_set
    #stub
    fake_char_rotate = [1,2,3,4]
    @encrypt.expects(:rotate_char_set).returns(fake_char_rotate)
    assert_equal fake_char_rotate, @encrypt.rotate_char_set
  end
end
