require 'pry-byebug'

puts "Welcome to Tic Tac Toe!"

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def joiner(array, joiner_a = ", ", joiner_b = "or")
  string = ''

  if array.length == 2
    array.join(" #{joiner_b} ")
  elsif array.length == 1
    array[0]
  else array[-1] = "#{joiner_b} #{array[-1]}"
    array.join(joiner_a)
  end
end

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  prompt "You're an #{PLAYER_MARKER}. Computer is an #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square: #{joiner(empty_squares(brd))}"
    square = gets.chomp.to_i
    if empty_squares(brd).include?(square)
      break
    else
      prompt "Sorry, that's not a valid choice"
    end
  end
  brd[square] = PLAYER_MARKER
end

def defense(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2 && brd.values_at(*line).count(COMPUTER_MARKER) == 0
      square = line.intersection(empty_squares(brd))[0]
      return square
    end
  end
  nil
end

def offense(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2 && brd.values_at(*line).count(PLAYER_MARKER) == 0
      square = line.intersection(empty_squares(brd))[0]
      return square
    end
  end
  nil
end

def computer_places_piece!(brd)
  if offense(brd)
    square = offense(brd)
  elsif defense(brd)
    square = defense(brd)
  elsif brd[5] == INITIAL_MARKER
    square = 5
  else
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def update_score(winner, win_tracker)
  case winner
  when 'Player'
    win_tracker[0] += 1
  when 'Computer'
    win_tracker[1] += 1
  else
    win_tracker
  end
  win_tracker
end

def detect_winner_whole_thing(win_tracker)
  if win_tracker[0] == 5
    return 'Player'
  elsif win_tracker[1] == 5
    return 'Computer'
  end
  nil
end

def someone_won_whole_thing?(win_tracker)
  !!detect_winner_whole_thing(win_tracker)
end

def display_score(win_tracker)
  prompt "Player wins: #{win_tracker[0]}, Computer wins: #{win_tracker[1]}"
end

def pick_who_goes_first
  prompt "Would you like to pick who goes first? y/n"
  answer = ''

  loop do
    answer = gets.chomp.downcase
    break if answer[0] == 'y' || answer[0] == 'n'
    prompt "Invalid response. Please answer y or n"
  end

  return(answer[0] == 'y' ? 'Player' : 'Computer')
end

def who_goes_first
  pick = pick_who_goes_first
  if pick == 'Player'
    prompt "Would you like to go first? y/n"
    answer = ''

    loop do
      answer = gets.chomp.downcase
      break if answer[0] == 'y' || answer[0] == 'n'
      prompt "Invalid response. Please answer y or n"
    end

    return(answer[0] == 'y' ? 'Player' : 'Computer')
  else
    return ['Player', 'Computer'].sample
  end
end

def place_piece!(brd, player)
  player == 'Player' ? player_places_piece!(brd) : computer_places_piece!(brd)
end

def alternate_player(player)
  player == 'Player' ? 'Computer' : 'Player'
end

loop do
  win_tracker = update_score(0, [0,0])
  current_player = who_goes_first
  prompt "OK, #{current_player} will go first"
  sleep(2)

  loop do
    board = initialize_board

    loop do
      display_board(board)
      place_piece!(board, current_player)
      display_board(board)
      sleep(1)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
    else
      prompt "It's a tie!"
    end

    win_tracker = update_score(detect_winner(board), win_tracker)

    display_score(win_tracker)
    sleep(3)

    if someone_won_whole_thing?(win_tracker)
      prompt "#{detect_winner_whole_thing(win_tracker)} won the whole thing!"
      break
    end
  end

  prompt "Play again? (y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Goodbye!"
