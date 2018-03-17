class Guest
  attr_reader :name
  attr_accessor :wallet

  def initialize(input_name, input_wallet)
    @name = input_name
    @wallet = input_wallet
  end

 def say_name
   return "Hi, my name is #{@name}"
 end

 def pay_entry(room)
   @wallet -= room.fee
 end

end
