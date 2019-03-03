class Pledge
    #accessors
  	attr_reader :user, :project, :pledge_amount

  	#Class variables
  	@@all = []

  	#Initializer
  	def initialize(user, project, pledge_amount)
      @user = user
      @project = project
      @pledge_amount = pledge_amount

  		@@all << self
  	end

  	#Instance Methods

  	#Class Methods
  	def self.all
  		@@all
  	end


    # #### Pledge
    # - #project
    #   - returns the project associated with a particular pledge
    # - #user
    #   - returns the user associated with a particular pledge
end
