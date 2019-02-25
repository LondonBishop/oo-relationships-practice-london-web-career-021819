require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Client.new("Peter Jones")
c2 = Client.new("Issac Newton")
c3 = Client.new("Matthew Boulton")

t1 = Trainer.new("Big Daddy")

l1 = Location.new("PowerUp Gym")
l2 = Location.new("Super Gym")

c1.assign_trainer(t1)
c2.assign_trainer(t1)
c3.assign_trainer(t1)

ts1 = Trainingsession.new(c1,l1)
ts2 = Trainingsession.new(c2,l1)
ts3 = Trainingsession.new(c3,l2)

Trainingsession.get_all_clients(l1)

binding.pry
"junk"
