class River

attr_reader :name, :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
    @random_fish = ""
  end



  def generate_random_fish()
    @random_fish = @fishes.sample
  end

  def remove_fish()
    returned_fish = @fishes.pop()
    # yep, so that's it :D 👍
    return returned_fish
    # fishes.pop()
    # @fishes.delete(generate_random_fish())
  end

  def count_fishes()
    return @fishes.size()
  end


end
