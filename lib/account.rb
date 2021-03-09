# frozen_string_literal: true

class Account
  attr_reader :balance, :transactions

  DEFAULT_BALANCE = 0
  DATE = Time.new.strftime('%d/%m/%Y')

  def initialize
    @balance = DEFAULT_BALANCE
    @transactions = []
  end

  def deposit(money)
    @balance += money
    "#{DATE}, credit, #{money}"
  end

  def withdraw(money)
    @balance -= money
    "#{DATE}, debit, #{money}"
  end
end
