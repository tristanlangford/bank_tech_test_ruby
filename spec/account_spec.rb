require 'account'

describe Account do 

    subject { Account.new() }

    it 'initiates with a balance at 0' do 
        expect(subject.balance).to eq(0)
    end

    it 'initiates with an empty array for account history' do 
        expect(subject.account_history).to eq([])
    end

end