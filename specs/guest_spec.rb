require('minitest/autorun')
require_relative('../guest')

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Mike")
    @guest2 = Guest.new("Simon")
    @guest3 = Guest.new("Lewis")
  end

  def test_guest_has_name
    result = "Mike"
    assert_equal(result, @guest1.name)
  end

  def test_guest_can_say_name
    result = "Hi, my name is Mike"
    assert_equal(result, @guest1.say_name)
  end
end
