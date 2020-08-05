require 'account'

describe Account do 

    let(:account_activity) { double("account_activity", new: nil) }
    let(:print_statement_instance) { double("print_statement_instance", print: nil) }
    let(:print_statement) { double("print_statement", new: print_statement_instance) }

    subject { Account.new(account_activity, print_statement) }

    it 'initiates with a balance at 0' do 
        expect(subject.balance).to eq(Account::STARTING_BALANCE)
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

    it 'calls print statement' do 
        expect(print_statement_instance).to receive(:print) 
        subject.print_statement
    end 

end