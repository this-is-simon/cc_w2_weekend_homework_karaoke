require('minitest/autorun')
require_relative('../room')
require_relative('../song')
require_relative('../guest')

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new(101)

    @guest1 = Guest.new("Mike")
    @guest2 = Guest.new("Simon")
    @guest3 = Guest.new("Lewis")

    #copied and pasted from our guest_spec.rb
    @song1 = Song.new("Let Me Put My Love Into You", "ACDC")
    @song2 = Song.new("Song 2", "Blur")
    #copied and pasted from our song_spec.rb
  end

  def test_room_has_name
    assert_equal(101, @room1.name)
  end

  def test_room_has_no_occupants
    result = []
    assert_equal(result, @room1.occupants)
  end

  def test_room_has_playlist
    expected_result = []
    assert_equal(expected_result, @room1.playlist)
  end

  def test_add_guest_to_room
    @room1.add_guest_to_room(@guest1)
    #We have called a new method .add_guest_to_room and we need to pass it an argument which is a 'real' guest object, in this case @guest1
    actual_result = 1
    expected_result = @room1.occupants.length()
    assert_equal(actual_result, expected_result)
  end

  def test_remove_guest_from_room
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    @room1.add_guest_to_room(@guest3)
    @room1.remove_first_guest_from_room()
    #We don't need an argument for remove_guest here because we're not trying to remove by name, only kick out the first (or last) element in our array



  end

end
