class User

  attr_reader :name

  @@all_users = []

  def initialize (name)
    @name = name
    @@all_users << self
  end

  # #### User
  # - .highest_pledge
  #   - returns the user who has made the highest pledge

  # - .multi_pledger
  #   - returns all users who have pledged to multiple projects

  # - .project_creator
  #   - returns all users who have created a project


end
