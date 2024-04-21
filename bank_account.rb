class BankAccount
    attr_reader :owner, :account_num
    attr_accessor :balance

    def initialize(owner, account_number, balance)
        @owner = owner
        @account_number = account_number
        @balance = balance
      end

    def deposit(money)
        @balance += money
        puts "About #{money} was made. current balance: #{@balance}"
    end

    def withdraw(money)
        if money > @balance
            puts "insufficient balance"
        else
            @balance -= money
            puts "About #{money} was withdrawn. Current balance: #{@balance}"
        end
    end
end

bank_user = BankAccount.new("ela", 1223456, 100)
puts "#{bank_user.owner}'s account: #{bank_user.account_num}, Balance: #{bank_user.balance} TL"
bank_user.deposit(500)
bank_user.withdraw(200)
