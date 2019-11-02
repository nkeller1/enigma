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
#need to change all these to mocks
  def test_collect_day
    assert_equal "02", @offset.collect_day
  end
  #
  def test_collect_month
    assert_equal "11", @offset.collect_month
  end

  def test_collect_year
    assert_equal "19", @offset.collect_year
  end

  def test_combine
    assert_equal "021119", @offset.combine
  end

  def test_square
    assert_equal 446012161, @offset.square_date
  end

  def test_take_last_four
    assert_equal 2161, @offset.take_last_four
  end

  def test_split_last_four
    assert_equal ["2", "1", "6", "1"], @offset.split_last_four
  end

  def test_create_last_four_pairing
      #will use mocks and stubs here. this is just a failing placeholder
      expected = { :a => 2,
                   :b => 1,
                   :c => 6,
                   :d => 1,
                  }

      assert_equal expected, @offset.create_last_four_hash
  end

end
