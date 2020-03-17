require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class BearTest < MiniTest::Test

  def setup()
  @bear = Bear.new("Yoghi", 'Grizzly')
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
    @bear.eat(@river)
    assert_equal(1,@bear.stomach.size())
  end

  def test_roar()
    assert_equal("Roar!!!", @bear.roar())
  end






end
