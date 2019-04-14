def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1    #(from cli gets)
end

def position_taken?(board, index)
  x = nil
  if board[index] == " " || board[index] == "" || board[index] == nil
    x = false
  else
    x = true
  end
end

def valid_move?(board, index)
  if index <= 0 || index >= 8
    if !position_taken?(board, index)
      true
    end
  end
  index.between?(0,8) && !position_taken?(board, index)
end

def move(board,index,user_token = "X")
  board[index] = user_token
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
#  valid_move?(board, index)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    puts "Invalid move. Please try again."
    turn(board)
  end
end
