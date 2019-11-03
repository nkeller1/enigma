require_relative './test_helper'
require 'date'
require 'mocha/minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/enigma'
require_relative '../lib/offset'

class OffsetTest < Minitest::Test

  def setup
    @offset = Offset.new
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_collect_day
    #stub data
    @offset.expects(:collect_day).returns("01")
    assert_equal "01", @offset.collect_day
  end

  def test_collect_month
    assert_equal "11", @offset.collect_month
  end

  def test_collect_year
    assert_equal "19", @offset.collect_year
  end

  def test_combine
    #stub data
    @offset.expects(:combine).returns("12345")
    assert_equal "12345", @offset.combine
  end

  def test_square_date
    #stub data
    @offset.expects(:square_date).returns(123456789)
    assert_equal 123456789, @offset.square_date
  end

  def test_take_last_four
    assert_equal 2161, @offset.take_last_four
  end

  def test_split_last_four
    assert_equal ["2", "1", "6", "1"], @offset.split_last_four
  end

  def test_create_last_four_pairing
    # stub data
    fake_pairing = {:a =>12,:b => 23, :c => 34, :d => 45}
    @offset.expects(:create_last_four_hash).returns(fake_pairing)

    assert_equal fake_pairing, @offset.create_last_four_hash
  end

end
