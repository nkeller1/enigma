require_relative './test_helper'
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
  #
  def test_seperate_to_pairs
    #will use mocks and stubs here. this is just a failing placeholder
    expected = { :a => 84,
                 :b => 45,
                 :c => 58,
                 :d => 89,
                }

    assert_equal expected, @codekey.seperate_to_pairs
  end

end
