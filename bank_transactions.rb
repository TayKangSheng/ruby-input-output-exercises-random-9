class BankAccount

  def initialize(balance)
    @balance = balance
  end

  def balance
    p "Your current balance is #{@balance}"
    # p "What would you like to do? (deposit, withdraw, check_balance)"
    # @operation = gets.chomp
  end

  def deposit
    p "How much would you like to deposit?"
    deposit = gets.chomp
    @deposit = deposit.to_i
    @balance += @deposit
    p "Your current balance is #{@balance}"
  end

  def withdraw
    p "How much would you like to withdraw?"
    withdraw = gets.chomp
    @withdraw = withdraw.to_i
    @balance -= @withdraw
    p "Your current balance is #{@balance}"
  end

  def show
    balance

    loop do
      p "What would you like to do? (deposit, withdraw, check_balance)"
      operation = gets.chomp

      withdraw if operation == "withdraw"
      deposit if operation == "deposit"

      p "Are you done?"
      status = gets.chomp

      if status == "yes"
        p "Thank you!"
        break
      else
        show
      end
    end
  end

end

xavier_account = BankAccount.new(1000000)
xavier_account.show
