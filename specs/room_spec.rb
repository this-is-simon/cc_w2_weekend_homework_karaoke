require('minitest/autorun')
require_relative('../room')
require_relative('../song')
require_relative('../guest')

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new(101)
  end

  def test_room_has_name
    assert_equal(101, @room1.name)
  end

  def test_room_has_no_occupants
    result = []
    assert_equal(result, @room1.occupants)
  end

  def test_room_has_playlist
    result = []
    assert_equal(result, @room1.playlist)
  end

end
