class User

  attr_reader :name

  @@all = []

  def  initialize(name)
    @name = name
    @@all << self
  end

  def self.all
      @@all
  end

  def pledges
      Pledge.all.select {|pledge| pledge.user == self}
  end

  def projects
    pledges.map {|pledge| pledge.project}
  end

  def self.project_creator
    @@all.select {|user| user.projects.size > 0}
      # pledges.map {|pledge| pledge.project}
  end

end

# .highest_pledge
#   - returns the user who has made the highest pledge
# - .multi_pledger
#   - returns all users who have pledged to multiple projects
# - .project_creator
#   - returns all users who have created a project
