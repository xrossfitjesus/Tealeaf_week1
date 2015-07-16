#Rock Paper Scisor try without video

loop do
puts " Choose (R/ P /S) "
answer = gets.chomp

if answer == "r"
  puts " You picked ROCK, Computer picked PAPER \nYOU LOST!"
  break
elsif answer == "p"
  puts " You picked PAPER, Computter picked ROCK \nYOU WIN!"
  break
elsif answer == "s"
  puts " You picked Scisors, Computer picked Scisors \n IT IS A TIE!"
  break
else
  puts "Choose (R/ P /S)"
   end
end

puts " Do you want to play again? (Y/N)"
answer2 = gets.chomp
  if "n" == answer2 
    puts "okay bye"
end


#shit this is a shitty try. I took a glimpse on the final code. it iterate on a hash son!!!