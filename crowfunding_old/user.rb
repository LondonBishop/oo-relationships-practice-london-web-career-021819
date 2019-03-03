class User

  attr_reader :name

  @@all_users = []

  def initialize (name)
    @name = name
    @@all_users << self
  end

  def create_project(name, pledge_goal_amount)
      Project.new(self, name, pledge_goal_amount)
  end

  def back_project(project, amount)
      project.back(self, amount)
  end

  # #### User
  # - .highest_pledge
  #   - returns the user who has made the highest pledge

  # - .multi_pledger
  #   - returns all users who have pledged to multiple projects

  # - .project_creator
  #   - returns all users who have created a project

end
