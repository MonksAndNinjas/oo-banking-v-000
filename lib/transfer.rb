class Transfer
  attr_reader :sender, :receiver, :status, :amount
  # your code here
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    if sender.valid? == true and receiver.valid? == true
      true
    else
      false
    end
  end



end
