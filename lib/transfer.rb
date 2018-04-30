class Transfer
  attr_reader :name_sender, :namer_receiver
  # your code here
  def initialize(name_sender, name_receiver, money)
    @name_sender = name_sender
    @name_receiver = name_receiver
    @money = money
  end

end
