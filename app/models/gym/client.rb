class Client

  attr_reader :name

  @@all_clients

  def initialize (name)
      @name = name
      @@all_clients << self
  end

end
