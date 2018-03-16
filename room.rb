class Room
  attr_reader :name, :occupants, :playlist

  def initialize(input_name)
    #We're only passing one parameter because we've decided we only want to set a name for a 'newed up' room (Room 101) and not any guests
    @name = input_name
    @occupants = []
    @playlist = []
  end

  def add_guest_to_room(guest_object)
    #We can call the parameter anything we like. It refers back to the parameter in our test_add_guest_to_room(@guest1)
    return @occupants << guest_object
  end


end
