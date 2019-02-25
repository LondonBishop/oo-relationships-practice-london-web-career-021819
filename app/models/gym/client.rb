class Client

  attr_reader :name, :trainer

  @@all_clients =[]

  def initialize (name)
      @name = name
      @trainer = nil
      @@all_clients << self
  end

  def assign_trainer(trainer)
      @trainer = trainer
  end
  
end
