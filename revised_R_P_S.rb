#Revised R/P/S game, code review
selection = { "r" => "rock", "p" => "paper", "s" => "scissors"}

puts " Hello! Welcome to Rock - Paper - Scisor Game!!"



#def for defined_answer
def defined_answer(input)
  case input
    when "r"
      puts " Rock Defeats Paper!"
    when "p"
      puts "Paper Defeats Rock!"
    when "s" 
      puts "Scissor Defeats Rock!" 
    end
  end
  
def answering(x,y)
  if x == "r" && "y" == "s"
    puts " You chose Rock, Computer choose scissor,\n win the game"
    elsif x == "r" && y == "r"
    puts "you chose rock, Computer chopse Rock \ntie"
    elsif x == "r" && y == "p"
    puts "you chose rock, computer chose paper \n lost the game"
    end
end

def tie_result(x)
  case x
  when "r"
    puts "You chose Paper, Computer Chose Paper"
  when "p"
    puts "You chose Paper, Computer Chose Paper"
  when "s"
    puts "You chose Paper, Computer Chose Paper"
  end
end

#asking for the input

loop do
  
  begin
    puts " ------Please Choose!------- \n[R] for Rock, [P] for Paper, [S] for Scissors! "
    user_select = gets.chomp.downcase
  end until selection.keys.include?(user_select)

  comp_select = selection.keys.sample


  if (user_select == "r" && comp_select == "p") || (user_select == "p" && comp_select == "r") ||
    (user_select == "r" && comp_select == "s")
    defined_answer(user_select)
    puts "You Win the Game!"
  elsif user_select == comp_select
  tie_result(comp_select)
  
  puts "Its a tie!"
  else
    defined_answer(comp_select)  
    puts "You lost"
  end
end

