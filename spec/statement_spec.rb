# frozen_string_literal: true

# As a user
# So I can see everything on one summary
# I would like a bank statement.

require 'statement'

describe Statement do
  let(:statement) { Statement.new }
  let(:transactions) { [transaction_one, transaction_two] }
  let(:transaction_one) { instance_double(Transaction, date: '02/03/2021', credit: 1000, debit: 0, balance: 1000) }
  let(:transaction_two) { instance_double(Transaction, date: '03/03/2021', credit: 0, debit: 300, balance: 700) }

  describe ' print_statement' do
    it 'shows a breakdown of transactions' do
      expect do
        statement.print_statement(transactions)
      end.to output("date || credit || debit || balance\n 02/03/2021 || 1000 || 0 || 1000\n 03/03/2021 || 0 || 300 || 700\n ").to_stdout
    end
  end
end
