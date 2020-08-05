class PrintStatement 

    attr_reader :statement

    def initialize(account_history)
        @statement = ["date || credit || debit || balance"]
    end

    def format_deposit(account_activity)
        "#{account_activity.activity_date} || £#{format_currency(account_activity.value)} || || £#{format_currency(account_activity.balance)}"
    end

    private

    def format_currency(value)
        '%.2f' % value
    end

end