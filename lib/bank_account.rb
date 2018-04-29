
class BankAccount
  attr_reader :name, :balance, :status

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
    if self.status == "open" and self.balance > 0
      true
    else
      false
    end
  end

end
