class Project

    #accessors
  	attr_reader :name, :pledge_goal

  	#Class variables
  	@@all = []

  	#Initializer
  	def initialize(name, pledge_goal)
      @name = name
      @pledge_goal = pledge_goal

  		@@all << self
  	end

  	#Instance Methods

  	#Class Methods
  	def self.all
  		@@all
  	end


    def get_amount_raised

        amountraised = 0
        get_all_pledges.each do |pledge|
          amountraised = amountraised + pledge.pledge_amount
        end

        return amountraised
    end


    def get_all_pledges
        Pledge.all.select {|pledge| pledge.project == self}
    end

    def self.no_pledges
        @@all.map {|project| project.get_all_pledges.length < 1}
    end

    def self.above_goal
        Project.all.select {|p| p.get_amount_raised > p.pledge_goal}
    end


    # #### Project
    # - .no_pledges
    #   - returns all projects which have no pledges yet

    # - .above_goal
    #   - returns all projects which have met or exceeded their pledge goal

    # - .most_backers
    #   - returns the project with the highest number of backers


end
