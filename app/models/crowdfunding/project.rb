class Project

    attr_reader :name, :pledge_goal_amount

    @@all_projects = []

    def initialize (name, pledge_goal_amount, user)
      @user = user
      @name = name
      @pledge_goal_amount = pledge_goal_amount
      @@all_projects << self
    end

    def create(user,name, pledge_goal_amount)
      @@all_projects << Project.new(user, name, pledge_goal_amount)
    end

    def back (user, project, amount)
        Pledge.new(user, project, amount)
    end

    # #### Project
    # - .no_pledges
    #   - returns all projects which have no pledges yet

    # - .above_goal
    #   - returns all projects which have met or exceeded their pledge goal

    # - .most_backers
    #   - returns the project with the highest number of backers

end
