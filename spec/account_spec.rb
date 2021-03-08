# As a user
# So I can keep my money safe
# I want to be able to deposit money into an Account
#
# As a user
# SO I can track my money
# I want to be able to see dates on activity
#
# As a user
# So I can use my money
# I want to be able to withdraw my money
#
# As a user
# So I can see how much money I have
# I want to be able to see my balance
#
require 'account'

describe Account do
  it 'has a default balance of zero when asked for balance with no deposits' do
    account = Account.new()
    expect(account.balance).to eq 0
  end


  it 'takes in funds and adds it to the account balance' do
    account = Account.new()
    account.deposit(100)
    expect(account.balance).to eq 100
  end
end
