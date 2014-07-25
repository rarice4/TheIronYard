puts "*********************"
puts "_____________Welcome to Black Jack________________"
puts ":::::::press d to draw, s to split"
# set array of cards
# card deal
# set winning principle
# set losing principle
# 

@cards = [1,2,3,4,5,6,7,8,9,10,11]


def draw
	puts @cards.shuffle![3]
end

###################################

def run_round
	puts "draw?"
	c = gets.chomp

	puts "your draw is: "

	if  c == "d"
	puts draw
	end
end

run_round

puts "--------------------------"
#PLAYER CARD DRAWS
@card2 = @cards.shuffle[3]
@card3 = @cards.shuffle[3]
@card4 = @cards.shuffle[4]
@card5 = @cards.shuffle[5]
@card6 = @cards.shuffle[5]
@card7 = @cards.shuffle[5]
@card8 = @cards.shuffle[5]
@card9 = @cards.shuffle[5]
###

###### Split Methods
def split
		print @cards[3], " | "
		print @card4, " | "
		print " = "
		puts (@cards[3] + @card4)
		print @card2, " | "
		print @card5, " | "
		print " = "
		puts (@card2 + @card5)
		if (@card4 + @cards[3]) > 21
			puts "******BUST*****"
			abort
		elsif (@card2 + @card5) > 21
			puts "******BUST*****"
			abort
		end
		if (@card4 + @cards[3]) == 21
			puts "Black Jack !!!!!"
			abort
		elsif (@card2 + @card5) == 21
			puts "BLACK JACK !!!!!"
			abort
		end
			
end

def hit_split
		print @cards[3], " | "
		print @card4, " | "
		print @card6, " | "
		print " = "
		puts (@card4 + @card6 + @cards[3])
		print @card2, " | "
		print @card5, " | "
		print @card7, " | "
		print " = "
		puts (@card2 + @card5 + @card7)
		if (@card4 + @card6 + @cards[3]) > 21
			puts "******BUST*****"
			abort
		elsif (@card2 + @card5 + @card7) > 21
			puts "******BUST*****"
			abort
		end
		
		if (@card4 + @card6 + @cards[3]) == 21
			puts "BLACK JACK"
			abort
		elsif (@card2 + @card5 + @card7) == 21
			puts "BLACK JACK"
			abort
			
		end

end

def hit_split2
		print @cards[3], " | "
		print @card4, " | "
		print @card6, " | "
		print @card8, " | "
		print " = "
		puts (@card4 + @card6 + @cards[3] + @card8)
		print @card2, " | "
		print @card5, " | "
		print @card7, " | "
		print @card9, " | "
		print " = "
		puts (@card2 + @card5 + @card7 + @card9)
		if (@card4 + @card6 + @cards[3] + @card8) > 21
			puts "******BUST*****"
			abort
		elsif (@card2 + @card5 + @card7 + @card9) > 21
			puts "******BUST*****"
			abort
		end
		if (@card4 + @card6 + @cards[3] + @card8) == 21
			puts "BLACK JACK !!!!!!"
			abort
		elsif (@card2 + @card5 + @card7 + @card9) == 21
			puts "BLACK JACK !!!!!!"
			abort
		end
			

end

############ end Split methods


def round_2
	puts "draw or stand?"
	c = gets.chomp

	puts "your hand is: "

	if  c == "d"
	print @cards[3]
	print " | "
	puts @card2
	end
end
# run round 2
round_2

if (@cards[3] + @card2) == 21
			puts "BLACK JACK!!!!!"
			puts "______________"
			puts "GAME OVER"
			abort
		end

#####SCORING
if (@cards[3] + @card2) >= 21
	puts "********** YOU BUST ***********", "GAME OVER"
	abort
end

###########################
puts "--------------------------------"
#######Scoring
@card_total = (@cards[3].to_i + @card2.to_i + @card3.to_i)
#########

def round_3
	puts "draw or split (s)?"
	c = gets.chomp

	puts "your hand is: "

	if  c == "d"
	print @cards[3]
	print " | "
	print @card2
	print " | "
	print @card3
	puts " = ", @card_total

	else
		split
		puts "________________"
		puts "draw?"
		x = gets.chomp
		if x == "d"
			hit_split
			puts "draw?"
			z = gets.chomp
			if z == "d"
				hit_split2
			end
		end




end
end

round_3
if @card_total == 21
		puts "BLACK JACK!!!!!"
		abort
 end
if @card_total >= 21
	puts "********** YOU BUST ***********", "GAME OVER"
	abort
end


########################################
puts "_________________"
#scoring
@card_total1 = (@cards[3].to_i + @card2.to_i + @card3.to_i + @card4.to_i)
##
def round_4
	puts "draw or stand or split (z)?"
	c = gets.chomp

	puts "your hand is: "

	if  c == "d"
	print @cards[3]
	print " | "
	print @card2
	print " | "
	print @card3
	print " | "
	print @card4

	puts " = ", @card_total1
	end
end

round_4
#####SCORING
if @card_total1 == 21
		puts "BLACK JACK!!!!!"
		abort
 end
if @card_total1 >= 21
	puts "********** YOU BUST ***********", "GAME OVER"
	abort
end

#########################################
puts "_______________"
@card_total2 = (@cards[3].to_i + @card2.to_i + @card3.to_i + @card4.to_i + @card5.to_i)
def round_4
	puts "draw or stand or split (z)?"
	c = gets.chomp

	puts "your hand is: "

	if  c == "d"
	print @cards[3]
	print " | "
	print @card2
	print " | "
	print @card3
	print " | "
	print @card4
	print " | "
	print @card5

	puts " = ", @card_total2
end
end
round_4

if @card_total2 == 21
		puts "BLACK JACK!!!!!"
		abort
 end
if @card_total2 >= 21
	puts "********** YOU BUST ***********", "GAME OVER"
	abort
end

















