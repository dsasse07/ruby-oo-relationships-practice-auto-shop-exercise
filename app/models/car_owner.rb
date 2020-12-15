class CarOwner
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select {|car| car.owner == self}
  end

  def mechanics
    self.cars.map(&:mechanic)
  end

  def self.average_number_of_cars
    (self.all.sum{|owner| owner.cars.count} / self.all.count).to_f
  end
    
  
end
