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

  def test_seperate_to_pairs
    #stub data
      fake_pairing = {:a =>12,:b => 23, :c => 34, :d => 45}
      @codekey.expects(:seperate_to_pairs).returns(fake_pairing)

    assert_equal fake_pairing, @codekey.seperate_to_pairs
  end

end
