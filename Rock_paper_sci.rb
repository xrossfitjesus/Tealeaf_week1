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

=begin
Lines 37-42 are indented a bit too much. I would also maybe change your method name for "given_answer" to "display_result". Something more indicative of what the method will do
Tyler L.	o and change the name of your hash to options, collections in ruby are usually plural. That's about it, the rest looks good
o also line 28: Your elsif is indented a bit too much as well.
=end