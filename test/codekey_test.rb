require_relative './test_helper'
require 'date'
require 'mocha/minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/enigma'
require_relative '../lib/codekey'

class CodekeyTest < Minitest::Test
  def setup
    @codekey = Codekey.new
  end

  def test_it_exists
    assert_instance_of Codekey, @codekey
  end

  def seperate_number_to_pairs
    assert_equal "", @codekey.seperate_number_to_pairs
  end

end
