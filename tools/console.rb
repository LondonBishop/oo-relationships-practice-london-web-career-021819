require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Client.new("Peter Jones")

Pry.start
