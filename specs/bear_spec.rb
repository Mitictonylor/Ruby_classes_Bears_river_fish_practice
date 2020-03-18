require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Yoghi", 'Grizzly')
    @fish = Fish.new("Sammy")
    @fish2 = Fish.new("hay")
  @fishes = [@fish, @fish2]
    @river = River.new("Amazon", @fishes )
  end

  def test_bear_name()
    assert_equal("Yoghi", @bear.name)
  end

  def test_bear_type()
    assert_equal("Grizzly", @bear.type)
  end

  def test_stomach_starts_empty()
    assert_equal(0,@bear.stomach.size())
  end

  def test_count_fish_in_stomach()
    @bear.count_fishes_in_stomach()
    assert_equal(0,@bear.stomach.size())
  end

  def test_eat()
    @bear.eat(@fish)
    assert_equal(1,@bear.stomach.size())
  end

  def test_roar()
    assert_equal("Roar!!!", @bear.roar())
  end

  # def test_bear_eat_a_fish_from_river()
  # @river.bear_eats_fish_from_river(@bear)
  # assert_equal(1, @river.count_fishes())
  # assert_equal(1, @bear.count_fishes_in_stomach())
  # end

def test_bear_eat_a_fish_from_river()
  @bear.take_fish(@river) # there must be something wrong with take_fish
  # it's take fish that's not working... this all looks good.
  # Show me code for take_fish !!!!!
  assert_equal(1, @bear.count_fishes_in_stomach())
end

#i still don't get it



end
