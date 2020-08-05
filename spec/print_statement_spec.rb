require 'print_statement'

describe PrintStatement do 

    let(:interaction1) { double("account activity", balance: 10, amount: 10) }
    let(:interaction2) { double("account activity", balance: 8, amount: -2) }
    let(:interaction3) { double("account activity", balance: 32, amount: 24) }

    subject { PrintStatement.new([interaction1, interaction2, interaction3]) }

    it 'holds the headers in an array on initialize' do 
        expect(subject.statement).to eq(["date || credit || debit || balance"])
    end

end