puts "welcome to our game of tic tac toe"

#present a board
#player1 makes a choice
#saeve choice 
#did player 1 win1 ? is so end game
#if not player 2 makes a choice
#save choice
#check to see if player 2 wins, if so end the game
#0 = balnk
#1 represents x
#2 represents 0

board =[ 
	[0,0,0],
	[0,0,0],
	[0,0,0]
]

puts "#{board[0][0]}|#{board[0][1]}|#{board[1][2]}|"
puts"______"
puts "#{board[0][0]}|#{board[0][1]}|#{board[1][2]}|"
puts "_____"
puts "#{board[0][0]}|#{board[0][1]}|#{board[1][2]}|"

board.each do |row|
	row.each do |square|
		game_row = ""
		case square
		when 0
			game_row += '0'
		when 1 
			game_row += 'x'

		when 2 
			game_row += 'o'
		end
	
	end
puts game_row
print "\n"

end		
		 