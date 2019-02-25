class Trainingsession

  attr_reader :client, :trainer, :location

  @@all_trainingsessions =[]

  def initialize(client, location)
      @client = client
      #@trainer = client.trainer
      @location = location
      @@all_trainingsessions << self
  end

  def self.trainingsession_for_client(client)
      @@all_trainingsessions.select {|ts| ts.client == client }
  end

  def self.least_clients
      x = @@all_trainingsessions.group_by {|ts| ts.location }
      binding.pry
      return x
  end

end
