require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/runner'
require_relative 'test_helper'
require 'pry'

# test for complete me class
class CompleteMeTest < Minitest::Test
  def test_load
    violations = Violations.new
    violations.load

    assert_equal 500, violations.voilations.count
  end

end
