require "pry-byebug"

DECK = { 2 => [4, 2], 3 => [4, 3], 4 => [4, 4], 5 => [4, 5], 6 => [4, 6], +
        7 => [4, 7], 8 => [4, 8], 9 => [4, 9], "Jack" => [4, 10], +
        "Queen" => [4, 10], "King" => [4, 10], "Ace" => [4, 11, 1] }
PLAYER = "Player"
DEALER = "Dealer"
BUST = 21
DEALER_HITS_UNTIL = 17

def prompt(msg)
  puts "=> #{msg}"
end

def deal(available_cards, num_of_cards, who)
  dealt_cards = available_cards.keys.sample(num_of_cards)
  display_cards(who, dealt_cards)
  dealt_cards
end

def display_cards(who, cards)
  if cards.size > 1
    puts "#{who} has been dealt #{cards[0]} and #{cards[1]}"
  elsif cards.size == 1
    puts "#{who} has been dealt #{cards[0]}"
  end
end

def update_deck(available_cards, drawn_cards)
  drawn_cards = [*drawn_cards]
  drawn_cards.each do |drawn|
    available_cards.each do |card, values|
      if drawn == card
        values[0] -= 1
      end
    end
  end

  available_cards.select do |_, values|
    values[0] > 0
  end
end

def hit?
  prompt "Would you like to hit or stay? Enter h or s"
  answer = ''

  loop do
    answer = gets.chomp.downcase
    break if answer[0] == "h" || answer[0] == "s"
    prompt "Invalid response. Please enter h for hit or s for stay."
  end
  answer[0] == 'h'
end

def bust?(cards)
  cards > BUST
end

def dealer_hit?(cards)
  cards < DEALER_HITS_UNTIL
end

def determine_winner(player, dealer)
  if bust?(player)
    "Dealer wins!"
  elsif bust?(dealer)
    "Player wins!"
  else
    the_dif = player - dealer
    if the_dif > 0
      "Player wins!"
    elsif the_dif < 0
      "Dealer wins!"
    elsif the_dif == 0
      "It's a tie!"
    end
  end
end

def sum(cards)
  sum_array = []
  cards.each do |card|
    DECK.each do |key, values|
      if key == card
        sum_array << values[1]
      end
    end
  end

  loop do
    break if sum_array.sum <= BUST || !sum_array.include?(11)
    ace_index = sum_array.find_index(11)
    sum_array[ace_index] = 1
  end
  sum_array.sum
end

def play_again?
  prompt "Would you like to play again? y/n"
  answer = ''

  loop do
    answer = gets.chomp.downcase
    break if answer[0] == "y" || answer[0] == "n"
    prompt "Invalid response. Please enter y or n"
  end
  answer[0] == 'y'
end

def update_best_of_five!(score, winner)
  if winner == "Player wins!"
    score[0] += 1
  elsif winner == "Dealer wins!"
    score[1] += 1
  end
end

def determine_big_winner(score)
  if score[0] > score[1]
    "Player"
  else
    "Dealer"
  end
end

prompt "Welcome to Twenty One!"

loop do
  sleep(2)
  system("clear")
  available_cards = DECK
  prompt "This game is played to the best of 5 games. Your total score will be shown after each round."
  sleep(3)
  score = [0, 0]

  loop do
    prompt "Dealing your cards..."
    sleep(2)
    player_cards_drawn = deal(available_cards, 2, PLAYER)
    dealer_cards_drawn = deal(available_cards, 1, DEALER)
    available_cards = update_deck(available_cards, player_cards_drawn)
    available_cards = update_deck(available_cards, dealer_cards_drawn)
    player_sum = sum(player_cards_drawn)
    dealer_sum = sum(dealer_cards_drawn)

    loop do
      break if bust?(player_sum)
      break if !hit?
      sleep(2)
      player_cards_drawn += deal(available_cards, 1, PLAYER)
      player_sum = sum(player_cards_drawn)
      prompt "Player sum is now #{player_sum}"
      sleep(2)
      available_cards = update_deck(available_cards, player_cards_drawn[-1])
    end

    loop do
      break if bust?(dealer_sum) || bust?(player_sum)
      break if !dealer_hit?(dealer_sum)
      sleep(2)
      prompt "Dealer will hit..."
      sleep(2)
      dealer_cards_drawn += deal(available_cards, 1, DEALER)
      dealer_sum = sum(dealer_cards_drawn)
      prompt "Dealer sum is now #{dealer_sum}"
      sleep(2)
      available_cards = update_deck(available_cards, dealer_cards_drawn[-1])
    end

    winner = determine_winner(player_sum, dealer_sum)
    prompt "#{winner} Player total was #{player_sum} and Dealer total was #{dealer_sum}"
    update_best_of_five!(score, winner)
    prompt "The score is #{score[0]} rounds won by Player and #{score[1]} rounds won by Dealer"
    sleep(3)
    break if score.include?(3)
    prompt "Next round..."
    sleep(3)
  end
  prompt "The winner of the whole thing was #{determine_big_winner(score)}"
break unless play_again?
end

prompt "Thank you for playing! Goodbye"
