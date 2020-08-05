require_relative './account_activity'
require_relative './print_statement'

class Account 

    attr_reader :balance, :account_history

    STARTING_BALANCE = 0

    def initialize(account_activity_class = AccountActivity, print_statement_class = PrintStatement)
        @balance = STARTING_BALANCE
        @account_history = []
        @account_activity_class = account_activity_class
        @print_statement_class = print_statement_class
    end

    def deposit(value)
        @balance += value
        @account_history.push(@account_activity_class.new(@balance, value))
    end

    def withdraw(value)
        @balance -= value
        @account_history.push(@account_activity_class.new(@balance, -value))
    end

    def print_statement 
        statement = @print_statement_class.new(@account_history)
        statement.print
    end

end