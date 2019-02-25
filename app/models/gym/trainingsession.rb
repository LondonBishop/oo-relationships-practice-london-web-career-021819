class Trainingsession

  attr_reader :client, :trainer, :location

  @@all_trainingsessions

  def initialize(client, trainer, location)
      @client = client
      @trainer = trainer
      @location = location
  end
end
