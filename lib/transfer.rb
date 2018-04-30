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
    if @sender.valid? == true and @receiver.valid? == true
      true
    else
      false
    end
  end

  def execute_transaction
    if self.status == "complete" or self.valid? == false
      sender.balance.freeze
      receiver.balance.freeze
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    elseif
    
    else
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    end
  end



end
