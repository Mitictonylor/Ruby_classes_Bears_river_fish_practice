require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')
require_relative('../river')
require_relative('../bear')

class RiverTest < MiniTest::Test

  def setup()

    @fish1 = Fish.new("Sea bass")
    @fish2 = Fish.new("Salmon")

    @fish = [@fish1, @fish2]

    @river = River.new("Amazon" )

    @new_fish = Fish.new("Trout")
  end


end
