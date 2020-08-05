require 'print_statement'

describe PrintStatement do 

    let(:interaction1) { double("account activity", balance: 10, value: 10, activity_date: "06/09/2020") }
    let(:interaction2) { double("account activity", balance: 8, value: -2, activity_date: "22/10/2020") }
    let(:interaction3) { double("account activity", balance: 32, value: 24, activity_date: "01/02/2019") }

    subject { PrintStatement.new([interaction1, interaction2, interaction3]) }

    it 'holds the headers in an array on initialize' do 
        expect(subject.statement).to eq(["date || credit || debit || balance"])
    end

    it 'formats a deposit output' do 
        expect(subject.format_deposit(interaction1)).to eq("06/09/2020 || £10.00 || || £10.00")
    end

end