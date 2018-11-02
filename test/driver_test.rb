require 'minitest/autorun'
require 'minitest/pride'
require './lib/driver'

class DriverTest < Minitest::Test
  def setup
    @driver = Driver.new("Bob")
  end

  def test_it_exists
    assert_instance_of Driver, @driver
  end
  def test_it_has_a_name
    assert_equal "Bob", @driver.name
  end
end
