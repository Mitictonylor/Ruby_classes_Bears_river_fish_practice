require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../fish")

class TestFish < MiniTest::Test
	def setup()
		@fish = Fish.new("Sea bass")
	end

	def test_fish_has_a_name()
		assert_equal("Sea bass", @fish.name())
	end
end
