# frozen_string_literal: true

class Transaction
  attr_reader :date, :credit, :debit, :balance

  def initialize(date, credit, debit, balance)
    @date = date
    @credit = credit
    @debit = debit
    @balance = balance
  end

  def create_deposit_trans(value)
    Transaction.new(DATE, value, 0, @balance)
  end

  def create_withdraw_trans(value)
    Transaction.new(DATE, 0, value, @balance)
  end
end
