class Project

    attr_reader :user, :name, :pledge_goal_amount

    @@all_projects = []

    def initialize (user, name, pledge_goal_amount)
      @user = user
      @name = name
      @pledge_goal_amount = pledge_goal_amount
      @@all_projects << self
    end

    # def create(user, name, pledge_goal_amount)
    #     @@all_projects << Project.new(user, name, pledge_goal_amount)
    # end

    def self.all
        @@all_projects
    end

    def back (user, amount)
        Pledge.new(user, self, amount)
    end

    def raised_amount
        r = 0
        projectpledges =  Pledge.all.select {|pledge| pledge.project == self}
        amountraised = projectpledges.map {|pledge| pledge.amount}
        amountraised.each {|amountraised| amountraised
          r += amountraised
        }
        return r

    end

    def get_num_pledges 

          pledgenumber ={}

          projectpledges = Pledge.all.select {|pledge| pledge.project == self}

          pledgenumber[:pledge] = self.name
          pledgenumber[:number] = projectpledges.length

          #binding.pry
          return pledgenumber
    end

    def self.no_pledges
        all.select {|project| project.raised_amount == 0}
    end

    def self.above_goal
          all.select {|project| project.raised_amount > project.pledge_goal_amount}
    end

    def self.most_backers
      x =  all.map {|project| project.get_num_pledges}
      binding.pry
      x.max
    end

    # #### Project
    # - .no_pledges
    #   - returns all projects which have no pledges yet

    # - .above_goal
    #   - returns all projects which have met or exceeded their pledge goal

    # - .most_backers
    #   - returns the project with the highest number of backers

end
