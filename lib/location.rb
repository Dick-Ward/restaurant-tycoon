
class Location
  attr_accessor :address, :rent, :restaurant

  @@all = []

  def initialize(address, rent, restaurant)
    @address = address
    @rent = rent
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end

  def employees
    Employee.all.select do |employee|
      employee.location == self
    end
  end

  def self.all_addresses
    Location.all.map do |location|
      location.address
    end
  end

###  BONUS ###

  def hire_employee(name, pay)
    Employee.new(name, pay, self)
  end


end
