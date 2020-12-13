class Car
  @@all = []
  attr_reader :make, :model, :owner, :mechanic, :classification

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
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
