class River

attr_reader :name, :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
    @random_fish = ""
  end

  def count_fishes()
    return @fishes.size()
  end

  def generate_random_fish()
    @random_fish = @fishes.sample
  end

  def remove_fish()
    @fishes.delete(generate_random_fish())
  end

  def bear_eats_fish_from_river(bear)
    remove_fish()
    bear.eat(generate_random_fish())
    bear.count_fishes_in_stomach()
    count_fishes()
  end

end
