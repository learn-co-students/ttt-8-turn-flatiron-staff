def display_board(board)
	puts " #{board[0]} | #{board[1]} | #{board[2]} "
	puts "-----------"
	puts " #{board[3]} | #{board[4]} | #{board[5]} "
	puts "-----------"
	puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(i)
	return (i.to_i - 1)
end

def valid_move?(board, i)
	if !position_taken?(board, i) && i.between?(0,8)
		return true 
	else
		return false
	end
end

def position_taken?(board, i)
	if board[i] == " " || board[i] == "" || board[i] == nil
		return false
	elsif board[i] == 'X' || board[i] == 'O'
		return true 
	end 
end

def move(board, i, token='X')
	board[i] = token 
	display_board(board)
end

def turn(board)
	puts 'Please enter 1-9:'
	user_num = gets.strip
	i = input_to_index(user_num)
	if valid_move?(board, i) == true 
		move(board, i)
	else
		turn(board)
	end
end