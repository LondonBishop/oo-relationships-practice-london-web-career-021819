class User

    #accessors
  	attr_reader :name

  	#Class variables
  	@@all = []

  	#Initializer
  	def initialize(name)
      @name = name
  		@@all << self
  	end

  	#Instance Methods

  	#Class Methods
  	def self.all
  		@@all
  	end


    def get_all_pledges
        Pledge.all.select {|pledge| pledge.user == self}
    end

    def self.project_creator
        @@all.select {|user| user.get_all_pledges }
    end


    def get_amount_raised

        amountraised = 0
        get_all_pledges.each do |pledge|
          amountraised = amountraised + pledge.pledge_amount
        end

        return amountraised
    end

    def self.highest_pledge

        highestpledgeamount = 0
        highestpledgeuser = nil

        User.all.each do |u|
            if u.get_amount_raised > highestpledgeamount
                highestpledgeuser = u
                highestpledgeamount = u.get_amount_raised
            end
        end

        return highestpledgeuser

    end

    def self.multi_pledger
        User.all.select {|u| u.get_all_pledges.length > 1}
    end

    #
    # #### User
    # - .highest_pledge
    #   - returns the user who has made the highest pledge

    # - .multi_pledger
    #   - returns all users who have pledged to multiple projects

    # - .project_creator
    #   - returns all users who have created a project

end
