
class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def locations
    Location.all.select do |location|
      location.restaurant == self
    end
  end

  def total_rent
    locations.reduce(0) do |sum, location|
      sum + location.rent
    end
  end

  def create_location(address, rent)
    Location.create(address, rent, self)
  end

end
