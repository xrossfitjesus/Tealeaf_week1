option = { "r" => "rock", "p" => "paper", "s" => "scissor"}


def given_answer(x)
  case x
  when "r"
    puts " Rock, Crashes Scissor!"
  when "s"
    puts " Scisor, Cuts Paper!"
  when "p"
    puts " Paper Cuts Rock!"
  end
end

loop do
  
  begin
    puts "Choose R-ock, P-aper, S-cissor"
    answer = gets.chomp.downcase
  end until option.keys.include?(answer)


  random = option.keys.sample

  
  if answer == random
    puts " Its a tie"
    elsif (answer == "r" && random == "s") || (answer == "s" && random == "p") || (answer == "p" && random == "r")
    given_answer(answer)
    puts "You win the game!"
  else
    given_answer(random)
    puts "Sorry you lost the game"
  end
  
  puts " Try again?"
    quit = gets.chomp
    if quit == "n"
      puts "ok goodbye"
      break
    end
  end


