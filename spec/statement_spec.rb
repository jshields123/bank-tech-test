# frozen_string_literal: true

# As a user
# So I can see everything on one summary
# I would like a bank statement.

require 'statement'

describe Statement do
  describe '#print_statement' do

    it 'shows a breakdown of transactions' do
      account = Account.new
      statement = Statement.new
      account.deposit(1000)
      account.withdraw(300)
      expect do
      statement.print_statement([["03/03/2021", "300", "700"],["03/03/2021", "1000", "1000"] ])

    end.to output("date || credit || debit || balance\n03/03/2021 || || 300 || 700\n 03/03/2021 || 1000 || || 1000").to_stdout
  end
end
end
