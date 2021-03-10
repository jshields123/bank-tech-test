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
  end

  def deposit(value)
    @balance += value
    transaction = create_deposit_trans(value)
    @transactions << transaction
  end

  def withdraw(value)
    @balance -= value
    transaction = create_withdraw_trans(value)
    @transactions << transaction
  end

  def print_statement
    Statement.new.print_statement(@transactions)
  end

  private

  def create_deposit_trans(value)
    Transaction.new(DATE, value, 0, @balance)
  end

  def create_withdraw_trans(value)
    Transaction.new(DATE, 0, value, @balance)
  end
end
