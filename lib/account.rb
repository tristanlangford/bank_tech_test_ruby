class Account 

    attr_reader :balance, :account_history

    def initialize 
        @balance = 0
        @account_history = []
    end

    def deposit(value)
        @balance += value
    end

    def withdraw(value)
        @balance -= value
    end

end