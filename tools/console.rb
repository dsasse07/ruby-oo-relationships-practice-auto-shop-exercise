require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

joe = Mechanic.new("Joe Joe", "clunker")
frank = Mechanic.new("Franky Frank", "exotic")

owner1 = CarOwner.new("Taco")
owner2 = CarOwner.new("Potato")
owner3 = CarOwner.new("Mr. Pickle")

car1 = Car.new("Honda", "Accord", "clunker", owner1, joe)
car2 = Car.new("Ducky Car Co.", "The Quacken", "exotic", owner3, frank)
car3 = Car.new("McLaren", "F1", "exotic", owner2, frank)



binding.pry
0