class Room
  attr_reader :name, :occupants, :playlist, :fee
  attr_accessor :till

  def initialize(input_name, input_till)
    #We're only passing one parameter because we've decided we only want to set a name for a 'newed up' room (Room 101) and not any guests
    @name = input_name
    @occupants = []
    @playlist = []
    @till = input_till
    @fee = 10
  end

  def add_guest_to_room(guest_object)
    #We can call the parameter guest_object anything we like. It refers back to the parameter in our test_add_guest_to_room(@guest1)
    return @occupants << guest_object
  end

  def remove_first_guest_from_room
    @occupants.shift()
    #This kicks the first person off our array.
    return @occupants
    #This returns the @occupants array but now with the first person shifted off.
  end

  def remove_guest_by_name(guest_name_to_remove)
    @occupants.delete(guest_name_to_remove)
  end

  def add_song_to_playlist(song_object)
    return @playlist << song_object
  end

  def remove_song_from_playlist(song_object)
    @playlist.delete(song_object)
    return @playlist
  end

  def add_fee_to_till
    @till += @fee
  end

end
