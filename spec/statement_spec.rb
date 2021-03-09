# frozen_string_literal: true

# As a user
# So I can see everything on one summary
# I would like a bank statement.

require 'statement'

describe Statement do
  describe '#print_statement' do
    before(:each) { @account = Account.new }

    it 'shows a breakdown of transactions' do
      @account.deposit(1000)
      @account.withdraw(300)
      expect(@account.print_statement).to eq "date || credit || debit || balance
                                           #{DATE} || || #{withdrawn} || #{balance}
                                           #{DATE} || #{deposit} || || #{balance}"
    end
  end
end
