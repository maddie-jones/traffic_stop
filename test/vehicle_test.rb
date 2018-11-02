require 'minitest/autorun'
require 'minitest/pride'
require './lib/vehicle'
require './lib/driver'

class VehicleTest < Minitest::Test
  def setup
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @driver_1 = Driver.new("Bob")
  end

  def test_it_exists
    assert_instance_of Vehicle, @vehicle
  end
  def test_it_has_a_year
    assert_equal "2001", @vehicle.year
  end
  def test_it_has_make
    assert_equal "Honda", @vehicle.make
  end
  def test_it_has_a_model
    assert_equal "Honda", @vehicle.make
  end
  def test_it_has_no_driver
    assert_nil @vehicle.driver
  end
  def test_it_can_add_driver
    @vehicle.add_driver(@driver_1)
    assert_equal @driver_1, @vehicle.driver
  end

  def test_if_it_is_speeding
    assert_equal false, @vehicle.speeding?
  end
  
  def test_it_can_speed
    @vehicle.speed
    assert_equal true, @vehicle.speeding?
  end

end
