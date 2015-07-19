SELECTION = {'r' => 'Rock', 'p' => 'Paper', 's' => 'Scissors' }

def winning_message(x)
  case x
  when 'r'
    puts "You choose Rock, Computer Choose Scissor"
  when 'p'
    puts "You choose Paper, Computer choose Rock"
  when 's'
    puts "You choose Scissor, Computer choose Paper"
  end
end

def tie_method_message(y)
  case y
  when 'r'
     puts "You Choose Rock, Computer Choose Rock!"
  when 'p'
    puts "You choose Paper, Computer Choose Paper!"
  when 's'
    puts "You choose Scisorr, Computer Choose Scissor!"
  end
end

def losing_message(z)
  case z
  when 'r'
    puts "You Choose Rock, Computer Choose Paper! \nYou lost the Game!"
  when 'p'
    puts "You Choose Paper, Computer choose Scissor! \nYou lost the Game!"
  when 's'
    puts "You Choose Scissor, Comnputer choose Rock! \nYou lost the Game!"
  end
end

puts "Welcome to Rocks , Paper , Scisor Game!"

loop do
  begin
  puts "Please choose! \n[R] for Rock, [P] for Paper, [S] for Scissor"
  user_choice = gets.chomp.downcase
end until SELECTION.keys.include?(user_choice)


  comp_choice = SELECTION.keys.sample
  
  if user_choice == comp_choice
    tie_method_message(user_choice)
    puts " It is a tie!"
    elsif (user_choice == 'r' && comp_choice == 's') || (user_choice == 'p' && comp_choice == 'r') || (user_choice == 's' && comp_choice == 'p')
    winning_message(user_choice)
    puts "You win the game!"
  elsif 
    losing_message(user_choice)
  end
  
  puts "Do you want to play again? \n[Y]- Yes, [N]-No"
    break if gets.chomp.downcase == 'n' 
  end
  
  puts "Goodbye! n_n"
