require 'account_activity'

describe AccountActivity do 

    subject { AccountActivity.new(10) } 

    it 'holds the balance' do 
        expect(subject.balance).to eq(10)
    end

end