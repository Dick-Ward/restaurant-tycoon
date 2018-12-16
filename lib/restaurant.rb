
class Restaurant

  attr_accessor :name, :pay
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def create_location(address, rent)
    Location.new(address, rent, self)
  end

  def locations
    Location.all.select { |location| location.restaurant == self }
  end

  def employees
    locations.map { |location| location.employees }
  end

  def total_pay
    total_pay = 0
    employees.each do |employees_ary|
      employees_ary.each do |employee|
        total_pay += employee.pay
      end
    end
    total_pay
  end

  def total_expenses
    total_pay + total_rent
  end

  def total_rent
    total_rent = 0
    locations.each { |location| total_rent += location.rent }
    total_rent
  end
end
