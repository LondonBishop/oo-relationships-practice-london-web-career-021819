class Pledge

    attr_reader :user, :project, :pledge_amount

    @@all = []

    def  initialize(user, project, pledge_amount)
      @user = user
      @project = project
      @pledge_amount = pledge_amount

      @@all << self
    end

    def self.all
        @@all
    end

end
