class PrintStatement 

    attr_reader :statement

    def initialize(account_history)
        @statement = ["date || credit || debit || balance"]
    end

end