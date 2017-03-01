def guess
  answer = rand(100)
  puts "Guess a number between 1 and 100"
  attempts = 1

  loop do
    number = gets.chomp.to_i
    if (number == answer)
      p "you got it in #{attempts} tries"
      break
    end

    attempts += 1
    if(number < answer)
      p "The number is higher than #{number}.  Guess again"
    elsif(number > answer)
      p "The number is lower than #{number}.  Guess again"
    end
  end

end

guess
