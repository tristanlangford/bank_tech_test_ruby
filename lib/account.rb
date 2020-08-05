require_relative './account_activity'

class Account 

    attr_reader :balance, :account_history

    STARTING_BALANCE = 0

    def initialize(account_activity_class = AccountActivity)
        @balance = STARTING_BALANCE
        @account_history = []
        @account_activity_class = account_activity_class
    end

    def deposit(value)
        @balance += value
        @account_history.push(@account_activity_class.new(@balance, value))
    end

    def withdraw(value)
        @balance -= value
        @account_history.push(@account_activity_class.new(@balance, -value))
    end

end