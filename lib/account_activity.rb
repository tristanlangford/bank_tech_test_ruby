class AccountActivity

    attr_reader :balance, :value, :activity_date

    def initialize(balance, value)
        @balance = balance
        @value = value
        @activity_date = format_date(Time.now)
    end

    private

    def format_date(date)
        date.strftime("%d/%m/%Y")
    end

end