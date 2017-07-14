#board = [" "," "," "," "," "," "," "," "," "]
require 'pry'
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#display_board(board)

def input_to_index(index=0)
  index = index.to_i-1
end

def valid_move?(board,index)
  if index.between?(0,8) && position_taken?(board,index) == false
    true
  elsif !(index.between?(0,8))
    false
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  else
    true
  end
end

  def move(board, index, value = "X")
    board[index] = "#{value}"
  end

def turn(board)
  puts "Please enter 1-9:"
  string_index = gets.strip #'7'
  integer_index = input_to_index(string_index)
  if valid_move?(board,integer_index) == false
    turn(board)
  end
  move(board, integer_index, value = "X")
  display_board(board)
end


#def turn(board)
#  puts "Please enter 1-9:"
#  string_index = gets.strip #'7'
#  integer_index = input_to_index(string_index)
#  if valid_move?(board,integer_index) == false
#     turn(board)
#  end
#  move(board, integer_index, value = "X")
#end
