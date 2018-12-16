class Employee

  attr_accessor :name, :pay, :location
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, pay, location)
    @name = name
    @pay = pay
    @location = location
    @@all << self
  end

  def self.average_pay
    avg_pay = 0
    self.all.each { |employee| avg_pay += employee.pay }
    avg_pay = (avg_pay.to_f/self.all.count)
  end

end # end of Employee class
