require "pry"

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n------------\n #{board[3]} | #{board[4]} | #{board[5]} \n------------\n #{board[6]} | #{board[7]} | #{board[8]}  "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def move(board,index,value = "X")
  board[index] = value
  end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X"
    true
  end
end

def valid_move?(board,index)
  if !position_taken?(board,index) && index.between?(0,8)
    true
  else
    false
  end
end

def turn(board)

  puts "Please enter 1-9:"    
  user_input = gets.strip
  index = input_to_index(user_input)

until valid_move?(board,index)
  puts "Invalid Move"
  puts "Please enter 1-9:"    
  user_input = gets.strip
  index = input_to_index(user_input)
end
  move(board,index,value = "X")
  display_board(board)
  # turn(board)
end





  