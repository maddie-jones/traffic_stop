
class Vehicle

  attr_reader :year, :make, :model, :driver

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speed = 0 
  end

  def add_driver(driver)
    @driver = driver
  end

  def speeding?
    @speed >= 65
  end

  def speed
    @speed = 65
  end

end
