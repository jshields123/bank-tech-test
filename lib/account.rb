require 'date'

class Account
  attr_reader :balance, :transactions

  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
    @transactions = []

  end

  def deposit(money)
    @balance += money
  end

  def withdraw(money)
    date = Time.new.strftime("%d/%m/%Y")
    @balance -= money
    "#{date}, debit, #{money}"
  end

end
