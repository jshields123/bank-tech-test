# As a user
# So I can keep my money safe
# I want to be able to deposit money into an Account

require 'account'

describe Account do
  before(:each) do
    @account = Account.new
  end

  it 'has a default balance of zero when asked for balance with no deposits' do
    expect(@account.balance).to eq 0
  end


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

end





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
