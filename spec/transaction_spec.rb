# frozen_string_literal: true

require 'transaction'

describe Transaction do
  let(:transaction) { Transaction.new('10/03/2021', 100, 0, 100) }

  it 'creates a transaction' do
    expect(transaction.date).to eq '10/03/2021'
    expect(transaction.balance).to eq 100
    expect(transaction.credit).to eq 100
    expect(transaction.debit).to eq 0
  end
end
