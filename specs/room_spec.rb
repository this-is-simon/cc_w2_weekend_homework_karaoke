require('minitest/autorun')
require_relative('../room')
require_relative('../song')
require_relative('../guest')

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new(101)

    @guest1 = Guest.new("Mike", 30)
    @guest2 = Guest.new("Simon", 20)
    @guest3 = Guest.new("Lewis", 10)

    #copied and pasted from our guest_spec.rb
    @song1 = Song.new("Let Me Put My Love Into You", "ACDC")
    @song2 = Song.new("Song 2", "Blur")
    #copied and pasted from our song_spec.rb
    @song3 = Song.new("Fortunate Son", "Creedence Clearwater Revival")
  end

  def test_room_has_name
    result = 101
    assert_equal(result, @room1.name)
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
    #We have called a new method .add_guest_to_room and we need to pass it an argument which is a 'whole' guest object, in this case @guest1
    actual_result = 1
    expected_result = @room1.occupants.length()
    assert_equal(actual_result, expected_result)
  end

  def test_remove_first_guest_from_room
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    @room1.add_guest_to_room(@guest3)
    @room1.remove_first_guest_from_room()
    #We don't need an argument for remove_guest here because we're not trying to remove by name, only kick out the first (or last) element in our array
    actual_result = 2
    expected_result = @room1.occupants.length()
    #We're checking there are only 2 objects in the array, which we can test with @room1.occupants.length
    assert_equal(actual_result, expected_result)
    assert_equal([@guest2, @guest3], @room1.occupants())
  end

  def test_remove_guest_by_name
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    @room1.add_guest_to_room(@guest3)
    @room1.remove_guest_by_name(@guest2)
    assert_equal([@guest1, @guest3], @room1.occupants())
  end

  def test_add_song_to_playlist
    @room1.add_song_to_playlist(@song1)
    actual_result = 1
    expected_result = @room1.playlist.length()
    assert_equal(actual_result, expected_result)
  end

  def test_remove_song_from_playlist
    @room1.add_song_to_playlist(@song1)
    @room1.add_song_to_playlist(@song2)
    @room1.add_song_to_playlist(@song3)
    @room1.remove_song_from_playlist(@song2)
    actual_result = [@song1, @song3]
    expected_result = @room1.playlist()
    assert_equal(actual_result, expected_result)
  end

end
