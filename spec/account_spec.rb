# frozen_string_literal: true

require 'account'
describe Account do
  subject(:account) { Account.new(transaction) }
  let(:transaction) { double("transaction")}

  describe '#initialize' do
    it 'creates an instance of transaction' do
      expect(account.transaction).to eq(transaction)
    end
  end

  describe ' #balance' do
    it 'has a default balance of zero when asked for balance with no deposits' do
      expect(account.balance).to eq 0
    end
  end

  describe ' #deposit' do
    it 'takes in 100 and adds it to the account balance' do
      @account.deposit(100)
      expect(@account.balance).to eq 100
    end

    it 'takes in 200 and adds it to the account balance' do
      @account.deposit(200)
      expect(@account.balance).to eq 200
    end

    it 'can take in 200 and then 100 and adds it to the balance' do
      @account.deposit(200)
      @account.deposit(100)
      expect(@account.balance).to eq 300
    end
    it 'displays time a deposit was made' do
      @account.deposit(100)
      expect(@account.balance).to eq 100
    end
  end

  describe ' #withdraw ' do
    it ' takes 100 off the account balance' do
      @account.deposit(200)
      @account.withdraw(100)
      expect(@account.balance).to eq 100
    end
    it 'takes 100 off account balance when empty ' do
      @account.withdraw(100)
      expect(@account.balance).to eq(-100)
    end

    it 'displays time a withdraw was made' do
      @account.deposit(200)
      @account.withdraw(100)
      expect(@account.balance).to eq 100
    end
  end
end
