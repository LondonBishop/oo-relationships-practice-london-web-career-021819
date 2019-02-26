class Location

  attr_reader :name
  @@all_locations =[]

  def initialize(name)
      @name = name
  end

  def self.least_clients
      Trainingsession.least_clients()
  end

  def self.get_all_clients
      Trainingsession.get_all_clients(self)
  end






end
