balance = 100
# 1. Print welcome and the horses names
puts "Welcome to the Ruby Equiine Race!"
horses = ["Seabiscuit", "Balu", "She's the fastest"]
horses.each_with_index do |horse, index|
  puts "#{index + 1} #{horse}"
end
# 2. Check that user still has money to bet
choice = "Y" # 2.5 initiate the loop for the first time


while balance >= 10 && (choice == "Y" || choice == "y")
  puts "You have #{balance} euros"
  # 3. Set the winner
  winning_horse = horses.sample

  # 4. Ask the user which horse she is betting on
  puts "Which horse are you betting on?"
  user_choice = gets.chomp
  balance -= 10
  # 5. Check if she won (+50)
  if winning_horse == user_choice
    puts "You win! You get 50 euros!"
    balance += 50
  else # 5. Or lost (-10 )
    puts "You lost 10 euros"
    # 7. Break from the loop if balance is 0
    break if balance == 0
  end
  # 6. Ask the user if they want to have another go and save choice
  puts "Do you feel lucky, punk? (Y/N)"
  choice = gets.chomp
end

# 8. Deep-cut consolation message
puts "Too bad, you lost everything, byee"
