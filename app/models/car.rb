class Car
  @@all = []
  attr_reader :make, :model, :owner, :mechanic, :classification

  def initialize(make, model, classification, owner_inst, mechanic_inst)
    @make = make
    @model = model
    @classification = classification
    @owner = owner_inst
    @mechanic = mechanic_inst
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map(&:classification).uniq
  end 

  def self.find_mechanics_by_classification(classification)
    Mechanic.all.select {|mechanic| mechanic.specialty == classification}
  end

end
