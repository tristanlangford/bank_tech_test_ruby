require 'account_activity'

describe AccountActivity do 

    subject { AccountActivity.new(10, 5) } 

    it 'holds the balance' do 
        expect(subject.balance).to eq(10)
    end

    it 'holds the value by which the balance changed' do 
        expect(subject.value).to eq(5)
    end

end