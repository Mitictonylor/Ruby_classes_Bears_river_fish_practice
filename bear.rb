class Bear

  attr_reader :name,:type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def add_fish()
  @stomach.push(@new_fish)
  end
end
