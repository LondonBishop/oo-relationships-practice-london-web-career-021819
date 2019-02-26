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
      first_time_in = true
      least_client_count = 0
      least_client_object = nil

      locationsessions = @@all_trainingsessions.group_by {|ts| ts.location }

      locationsessions.each do |location, value|
          if first_time_in
              least_client_count = value.length
              least_client_object = location
              first_time_in = false
          else
              if value.length < least_client_count
                least_client_count = value.length
                least_client_object = location
              end
          end
        end

        return least_client_object
  end

  def self.get_all_clients(location)
        @@all_trainingsessions.select {|ts| ts.location == location }
  end


  def self.most_clients
      first_time_in = true
      least_client_count = 0
      least_client_object = nil

      locationsessions = @@all_trainingsessions.group_by {|ts| ts.location }

      locationsessions.each do |location, value|
          if first_time_in
              least_client_count = value.length
              least_client_object = location
              first_time_in = false
          else
              if value.length < least_client_count
                least_client_count = value.length
                least_client_object = location
              end
          end
        end

        return least_client_object
  end



end
