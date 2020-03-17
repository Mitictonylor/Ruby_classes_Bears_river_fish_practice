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
end
