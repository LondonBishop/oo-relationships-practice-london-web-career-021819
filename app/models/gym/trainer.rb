class Trainer

  attr_reader :name
  @@all_trainers = []

  def initialize(name)
    @name = name
    @@all_trainers << self
  end

end
