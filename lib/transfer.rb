class Transfer
  attr_reader :sender, :receiver, :status, :money
  # your code here
  def initialize(sender, receiver, money)
    @sender = sender
    @receiver = receiver
    @money = money
    @status = "pending"
  end



end
