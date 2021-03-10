# frozen_string_literal: true

require_relative 'transaction'
require_relative 'statement'

class Account
  attr_reader :balance, :transactions

  DEFAULT_BALANCE = 0
  DATE = Time.new.strftime('%d/%m/%Y')
  TRANSACTIONS = @transactions

  def initialize
    @balance = DEFAULT_BALANCE
    @transactions = []
    @transaction_count = -1
  end

  def deposit(value)
    @transaction_count += 1
    @balance += value
    transaction = create_deposit_trans(value)
    @transactions << transaction
  end

  def withdraw(value)
    @transaction_count += 1
    @balance -= value
    transaction = create_withdraw_trans(value)
    @transactions << transaction
  end

  private

  def print_statement
    Statement.print_statement(@transactions)
  end

  def create_deposit_trans(value)
    transaction = Transaction.new("DATE", value, 0, @balance)
  end

  def create_withdraw_trans(value)
    transaction = Transaction.new("DATE", 0, value, @balance)
  end
end
