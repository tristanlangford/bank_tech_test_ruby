class PrintStatement 

    attr_reader :statement, :account_history

    def initialize(account_history)
        @statement = ["date || credit || debit || balance"]
        @account_history = order_activities(account_history)
    end

    def format_deposit(account_activity)
        "#{account_activity.activity_date} || £#{format_currency(account_activity.value)} || || £#{format_currency(account_activity.balance)}"
    end

    def format_withdrawal(account_activity)
        "#{account_activity.activity_date} || || £#{format_currency(-account_activity.value)} || £#{format_currency(account_activity.balance)}"
    end

    private

    def order_activities(account_history)
        account_history.sort { |a, b| b.activity_date <=> a.activity_date}
    end

    def format_currency(value)
        '%.2f' % value
    end

end