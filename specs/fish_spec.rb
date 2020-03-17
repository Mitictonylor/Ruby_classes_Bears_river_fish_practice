require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../fish")

class TestFish < MiniTest::Test
	def setup
		@fish = Fish.new("Sea bass")
	end

end
