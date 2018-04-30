
class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(money)
    @balance += money
  end

  def display_balance
      "Your balance is $#{self.balance}."
  end

  def valid?
    # bank account is "valid" if bankaccount.status: @status == "open" and  bankaccount.balance >0
    true if self.status == "open" and self.balance > 0
  end

end
