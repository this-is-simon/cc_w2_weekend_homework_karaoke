require('minitest/autorun')
require_relative('../guest')

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Mike")
  end

  def test_guest_has_name
    result = "Mike"
    assert_equal(result, @guest1.name)
  end

end
