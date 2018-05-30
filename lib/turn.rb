board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  i = input.to_i
  i = i-1
end

def position_taken?(array, index)
  if array[index] == " " ||
    array[index] == "" ||
    array[index] == nil
    return false
  elsif array[index] == "X" ||
    array[index] == "O"
    return true
  end
end

def valid_move?(array, index)
  if !position_taken?(array, index) &&
    index.between?(0,8)
      return true
  else
    return false
  end
end

def move(array, index, value="X")
  array[index]=value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  i = input_to_index(input)
  if valid_move?(board, i)
    move(board, i, value="X")
    display_board(board)
  else
    puts "Please enter 1-9:"
    input = gets.strip
    i = input_to_index(input)
  end

end


# 1. Asking the user for their move by position 1-9.
# 2. Receiving the user input.
# 3. Convert position to an index.
# 4. If the move is valid, make the move and display the board to the user.
# 5. If the move is invalid, ask for a new move until a valid move is received.

#need: display_board, valid_move?, and move
=begin
def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
  i = input.to_i
  i = i-1
end


def move(array, index, value="X")
  array[index]=value
end


def position_taken?(array, index)
  if array[index] == " " ||
    array[index] == "" ||
    array[index] == nil
    return false
  elsif array[index] == "X" ||
    array[index] == "O"
    return true
  end
end


def valid_move?(array, index)
  if !position_taken?(array, index) &&
    index.between?(0,8)
      return true
  else
    return false
  end
end
=end
