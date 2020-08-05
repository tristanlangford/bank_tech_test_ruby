class Account 

    attr_reader :balance, :account_history

    STARTING_BALANCE = 0

    def initialize()
        @balance = STARTING_BALANCE
        @account_history = []
    end

    def deposit(value)
        @balance += value
        @account_history.push([@balance, value])
    end

    def withdraw(value)
        @balance -= value
        @account_history.push([@balance, value])
    end

end