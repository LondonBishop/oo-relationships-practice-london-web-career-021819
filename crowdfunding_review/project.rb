class Project

  attr_reader :name, :goal_pledge_amount

  @@all = []

  def  initialize(name, goal_pledge_amount)
    @name = name
    @goal_pledge_amount = goal_pledge_amount

    @@all << self

  end

  def self.all
      @@all
  end


end
