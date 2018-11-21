class Employee
  attr_accessor :name, :location, :pay

  @@all = []

  def initialize(name, pay, location)
    @name = name
    @pay = pay
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_pay
    total_pay = Employee.all.reduce(0) do |sum, employee|
      sum + employee.pay
    end
    total_pay / Employee.all.length
  end

end
