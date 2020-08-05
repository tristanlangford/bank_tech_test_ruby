require 'account'

describe Account do 

    subject { Account.new() }

    it 'initiates with a balance at 0' do 
        expect(subject.balance).to eq(0)
    end

    it 'initiates with an empty array for account history' do 
        expect(subject.account_history).to eq([])
    end

    it 'deposit adds to balance' do 
        subject.deposit(10)
        expect(subject.balance).to eq(10)
    end

    it 'withdraw subtracts from balance' do 
        subject.withdraw(10)
        expect(subject.balance).to eq(-10)
    end

    it 'creates a new AccountActivity on deposit' do 
        subject.deposit(10)
        expect(subject.account_history.length).to eq(1)
    end

    it 'creates a new AccountActivity on withdraw' do 
        subject.withdraw(10)
        expect(subject.account_history.length).to eq(1)
    end

end