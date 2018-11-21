
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

  def employees
    employee_array = []
    locations.each do |location|
      location.employees.each do |employee|
        employee_array << employee
      end
    end
    return employee_array
  end

  def total_pay
    employees.reduce(0) do |sum, employee|
      sum + employee.pay
    end
  end

  def total_expenses
    self.total_rent + self.total_pay
  end

  def create_location(address, rent)
    Location.create(address, rent, self)
  end

end
