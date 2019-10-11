def input_to_index(user_input)
    (user_input).to_i - 1
end

def move(board, index, marker = "X")
    board[index] = marker
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def ask_for_input()
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && (index).between?(0, 8) == true
    return true
  else
    return false
  end
end

# def turn(board)
#   index = ask_for_input()
#   if valid_move?(board, index) == true
#     move(board, index, marker = "X")
#     display_board(board)
#   else
#     loop do
#       ask_for_input()
#       valid_move?(board, index) == true 
#       break
#     end
#   end
# end

def turn(board)
  loop do
    index = ask_for_input()
    if valid_move?(board, index) == true
      move(board, index, marker = "X")
      display_board(board)
      break
    end
  end
end