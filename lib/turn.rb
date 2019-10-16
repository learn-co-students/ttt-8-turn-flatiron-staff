def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts '-----------'
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts '-----------'
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, idx)
  !([nil, '', ' ', '  ', '   '].include?(board[idx]))
end

def valid_move?(board, idx)
  idx.between?(0, 8) && !position_taken?(board, idx)
end

def move(board, idx, token = 'X')
  board[idx] = token
end

def input_to_index(input)
  return -1 unless '0123456789'.include?(input)

  input.to_i - 1
end

def turn(board)
  puts 'Please enter 1-9:'

  idx = input_to_index(gets.strip)

  while idx == -1 || !valid_move?(board, idx)
    puts 'Please enter 1-9:'
    idx = input_to_index(gets.strip)
  end

  move(board, idx)
  display_board(board)
end
