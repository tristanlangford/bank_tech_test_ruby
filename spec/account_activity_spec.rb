require 'account_activity'
require 'timecop'

describe AccountActivity do 

    subject { AccountActivity.new(10, 5) } 

    before do
        Timecop.freeze(Date.parse("11/06/2020"))
    end

    it 'holds the balance' do 
        expect(subject.balance).to eq(10)
    end

    it 'holds the value by which the balance changed' do 
        expect(subject.value).to eq(5)
    end

    it 'holds the date it was created' do 
        expect(subject.activity_date).to eq("11/06/2020")
    end

end