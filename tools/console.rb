require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# #Gym loaders
# c1 = Client.new("Peter Jones")
# c2 = Client.new("Issac Newton")
# c3 = Client.new("Matthew Boulton")
#
# t1 = Trainer.new("Big Daddy")
#
# l1 = Location.new("PowerUp Gym")
# l2 = Location.new("Super Gym")
#
# c1.assign_trainer(t1)
# c2.assign_trainer(t1)
# c3.assign_trainer(t1)
#
# ts1 = Trainingsession.new(c1,l1)
# ts2 = Trainingsession.new(c2,l1)
# ts3 = Trainingsession.new(c3,l2)
#
# Location.least_clients
# Location.get_all_clients(l2)

#Crowdfunding loaders
u1 = User.new("Gandalf the Great")
u2 = User.new("Merlin the wizard")

p1 = u1.create_project("New Bridge", 500000)
p2 = u1.create_project("Teamaker", 10000)
p3 = u2.create_project("Crossrail", 10000000)

u1.back_project(p1,10000)
u2.back_project(p1,10000)
u2.back_project(p2, 3500)

#y = Project.no_pledges
returnproject = Project.no_pledges
binding.pry
puts returnproject.name


#binding.pry
"junk"
