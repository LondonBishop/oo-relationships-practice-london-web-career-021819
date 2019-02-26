class Pledge

    attr_reader :user, :project, :amount

    @@all_pledges = []

    def initialize (user, project, amount)
      @user = user
      @project = project
      @amount = amount
      @@all_pledges << self
    end

    def project()
        @project
    end

    def user()
        @user
    end

    # #### Pledge
    # - #project
    #   - returns the project associated with a particular pledge

    # - #user
    #   - returns the user associated with a particular pledge
    #

end
