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




end
