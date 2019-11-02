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
  def test_sets
    assert_equal "", @codekey.a_set
  end

end
