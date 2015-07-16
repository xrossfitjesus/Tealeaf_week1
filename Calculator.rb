#Calculator Quiz

puts "Type in your first number"
num1 = gets.chomp.to_i

puts "Type in your second number"
num2 = gets.chomp.to_i

loop do
puts " What will you use? \n1.)Add 2.)Subtract 3.)Multply 4.)Divide"
expression = gets.chomp.to_i

#if using do
if expression == 1
  puts " #{num1} + #{num2} is equal to #{num1 + num2}"
    break
  elsif expression == 2
    puts " #{num1} - #{num2} is equal to #{num1 - num2}"
    break
  elsif expression == 3
    puts " #{num1} * #{num2} is equal to #{num1 * num2}"
    break
  elsif expression == 4
    puts " #{num1} / #{num2} is equal to #{num1.to_f / num2}"
    break
  else 
    puts " you're crazy repeat it again"
    break
  end
end

=begin
if using

case expression
when 1
  puts " #{num1} + #{num2} is equal to #{num1 + num2}"
when 2
  puts " #{num1} - #{num2} is equal to #{num1 - num2}"
when 3
  puts " #{num1} * #{num2} is equal to #{num1 * num2}"
when 4 
  puts " #{num1} / #{num2} is equal to #{num1.to_f / num2}"
end

=end

#