require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')
require_relative('../river.rb')
require_relative('../bear')

class RiverTest < MiniTest::Test

  def setup()

    @fish1 = Fish.new("Sea bass")
    @fish2 = Fish.new("Salmon")

    @fishes = [@fish1, @fish2]

    @river = River.new("Amazon", @fishes )

    @bear = Bear.new("Yoghi","Grizzly")

  end

def test_river_name()
assert_equal("Amazon", @river.name())
end

def test_fishes_array()
  assert_equal(2,@fishes.length())
end

  def test_count_fish()
    assert_equal(2, @river.count_fishes())
  end

def test_remove_fish()
  nemo = @river.remove_fish()
  # @river.remove_fish()
  # assert_equal(1, @river.count_fishes())
  assert_equal("Salmon",nemo.name)
end



end
