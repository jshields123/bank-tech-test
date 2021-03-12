# frozen_string_literal: true

require_relative 'transaction'
require_relative 'statement'

class Account
  attr_reader :balance, :transactions, :transaction

  DEFAULT_BALANCE = 0
  DATE = Time.new.strftime('%d/%m/%Y')


  def initialize(transaction)
    @transaction = transaction
    @balance = DEFAULT_BALANCE
    @transactions = []
  end

  def deposit(value)
    @balance += value
    deposit_trans = transaction.create_deposit_trans(value)
    @transactions << deposit_trans
  end

  def withdraw(value)
    @balance -= value
    withdraw_trans = transaction.create_withdraw_trans(value)
    @transactions << withdraw_trans
  end

  def print_statement
    Statement.new.print_statement(@transactions)
  end

  private

  # def create_deposit_trans(value)
  #   @transaction(DATE, value, 0, @balance)
  # end
  #
  # def create_withdraw_trans(value)
  #   @transaction(DATE, 0, value, @balance)
  # end
end
