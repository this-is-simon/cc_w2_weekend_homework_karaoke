require('minitest/autorun')
require_relative('../song')

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Let Me Put My Love Into You", "ACDC")
    @song2 = Song.new("Song 2", "Blur")
  end

  def test_song_has_title
    result = "Let Me Put My Love Into You"
    assert_equal(result, @song1.title)
  end

  def test_song_has_artist
    result = "ACDC"
    assert_equal(result, @song1.artist)
  end
end
