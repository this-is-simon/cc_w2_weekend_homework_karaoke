require('minitest/autorun')
require_relative('../guest')

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Mike", 30)
    @guest2 = Guest.new("Simon", 20)
    @guest3 = Guest.new("Lewis", 10)
  end

  def test_guest_has_name
    result = "Mike"
    assert_equal(result, @guest1.name)
  end

  def test_guest_can_say_name
    result = "Hi, my name is Mike"
    assert_equal(result, @guest1.say_name)
  end

  def test_guest_has_wallet
    result = 30
    assert_equal(result, @guest1.wallet)
  end
end
