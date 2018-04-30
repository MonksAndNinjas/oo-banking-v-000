class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
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

  def execute_transaction
    sender.balance -= amount
    receiver.balance += amount

  end



end
