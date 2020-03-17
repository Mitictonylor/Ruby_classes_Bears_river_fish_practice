require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bear")
require_relative("../fish")

class BearTest < MiniTest::Test

def setup()
@bear = Bear.new("Yoghi", 'Grizzly')
@new_fish = Fish.new("Sea bass")
end

def test_stomach_starts_empty()
  assert_equal(0,@bear.stomach.size())
end

def test_add_fish_in_stomach()
  @bear.add_fish()
  assert_equal(1,@bear.stomach.size())
end







end
