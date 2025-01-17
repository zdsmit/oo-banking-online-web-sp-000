class BankAccount
  attr_reader :name
  attr_accessor :balance, :status

  def initialize(name, balance = 1000, status = "open")
    @name = name
    @balance = balance
    @status = status
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def display_balance
    "Your balance is $#{balance}."
  end

  def valid?
    @balance > 0 and @status == "open"
  end

  def close_account
    @status = "closed"
  end

end
