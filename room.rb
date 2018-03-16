class Room
  attr_reader :name, :occupants, :playlist

  def initialize(input_name)
    #We're only passing one parameter because we've decided we only want to set a name for a 'newed up' room (Room 101) and not any guests
    @name = input_name
    @occupants = []
  end


end
