def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1 + card2)
  sum = card2 + card1
end

def hit?(current)
  prompt_user
  input = get_user_input
  if input == 's'
    return current
  elsif input == 'h'
    current += deal_card
    return current
  else 
    invalid_command
    prompt_user
  end 
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current = initial_round
  until (current >= 21)
    current = hit?(current)
    display_card_total(current)
  end 
  end_game(current)
end
    
