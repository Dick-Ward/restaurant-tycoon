
class Location

  attr_accessor :address, :rent, :pay
  attr_reader :restaurant
  @@all = []

  def self.all
    @@all
  end

  def initialize(address, rent, restaurant)
    @address = address
    @rent = rent
    @restaurant = restaurant
    @@all << self
  end

  def self.all_addresses
    self.all.map { |location| location.address  }
  end

  def hire_employee(name, pay)
    Employee.new(name, pay, self)
  end

  def employees
    Employee.all.select { |employee| employee.location == self }
  end

end
