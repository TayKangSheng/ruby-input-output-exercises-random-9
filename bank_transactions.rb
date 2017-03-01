class BankAccount

  def initialize(balance)
    @balance = balance
  end
  
  def balance
    p "Your current balance is "
    balance = gets.chomp
    @balance = balance.to_i
    p "What would you like to do? (deposit, withdraw, check_balance)"
    @operation = gets.chomp
  end

  def deposit
    if(@operation == "deposit")
        p "How much would you like to deposit?"
        deposit = gets.chomp
        @deposit = deposit.to_i
        p "Your current balance is #{@balance + @deposit}"
  end

  def withdraw
    if(@operation == "withdraw")
      p "How much would you like to withdraw?"
      withdraw = gets.chomp
      @withdraw = withdraw.to_i
      p "Your current balance is #{@balance - @withdraw}"
  end

  def balance
  if(operation == "check_balance")
    p "Your current balance is #{@balance}"
  end
  p "Are you done?"
  status = gets.chomp
  p "Thank you!" if status == "yes"
  end
end
