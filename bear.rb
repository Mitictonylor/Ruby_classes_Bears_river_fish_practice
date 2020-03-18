class Bear

  attr_reader :name,:type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def eat(fish)
  @stomach.push(fish)
  end

  def count_fishes_in_stomach()
     @stomach.size()
  end

  def roar()
    return "Roar!!!"
  end

  # def bear_eats_fish_from_river(bear)
  #   remove_fish()
  #   bear.eat(generate_random_fish())
  #   bear.count_fishes_in_stomach()
  #   count_fishes()
  # end

def take_fish(river)
  fish = river.remove_fish() # show me this!!!
  eat(fish)
end

end
