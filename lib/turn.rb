puts "Welcome to Tic Tac Toe!"

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def turn(board)
  puts 'Please enter 1-9:'
  index = input_to_index(gets.chomp.to_i)


  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

def valid_move?(board, response)
  if response >= 0 && response < 9 && board[response] === " "
     true
  else
    false
  end
end

def move(board, index, symbol = 'X')
  board[index] = symbol
end