class Guest
  attr_reader :name

  def initialize(input_name)
    @name = input_name
  end

 def say_name
   return "Hi, my name is #{@name}"
 end

end
