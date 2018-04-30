require 'pry'

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
      "Transaction reject. Please check your account balance."
    end
  end

  def execute_transaction

    if self.status == "pending"
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    else
      sender.balance.freeze
      receiver.balance.freeze
    end
  end



end
