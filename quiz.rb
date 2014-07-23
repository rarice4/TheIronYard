
puts "___________"
puts ""
puts "Welcome to the Game of Thrones Quiz!"
puts "       note: spelling counts! no need to capitalize."
puts "___________"

score = 0

print "Question 1: "
puts "Which of the following is not one of Daenerys Targaryen's dragons?"

answers1 = ["Viserion", "Rhaegal", "Balerion", "Drogon"]

puts "Choices:"

answers1.each do |answerz|
	puts "#{answerz}"
end
print "answer:"
answer1 = gets.chomp.capitalize!


if answer1 == answers1[2]
	puts "*** You Are Correct!!! ***"
	score = score.next
else
	puts "*** Incorrect ***"

end

puts "___________"
print "Question 2: "
puts "Who is the leader of the Unsullied (Slave Soldiers freed by Daenerys)?"
#####

answers2 = ["Wormtongue", "Arstan", "Greyworm", "Greybeard"]

puts "Choices:"

answers2.each do |answerz|
	puts "#{answerz}"
end
print "answer:"
answer2 = gets.chomp.capitalize!
#####

if answer2 == answers2[2]
	puts "*** You Are Correct!!! ***"
	score = score.next
else
	puts "*** Incorrect ***"

end

puts "___________"
print "Question 3: "
puts "Who is Jaime Lannister's brother?"
###
answers3 = ["Joffrey", "Tyrion", "Stanis", "Tywin"]

puts "Choices:"

answers3.each do |answerz|
	puts "#{answerz}"
end
print "answer:"
answer3 = gets.chomp.capitalize!
####
if answer3 == answers3[1]
	puts "*** You Are Correct!!! ***"
	score = score.next
else
	puts "*** Incorrect ***"

end

puts "___________"
print "Question 4: "
puts "Jaime Lannister saves Brienne of Tarth from a?"
###
answers4 = ["Lion", "Bear", "Dragon", "Direwolf"]

puts "Choices:"
answers4.each do |answerz|
	puts "#{answerz}"
end
print "answer:"
answer4 = gets.chomp.capitalize!
####
if answer4 == answers4[1]
	puts "*** You Are Correct!!! ***"
	score = score.next
else
	puts "*** Incorrect ***"

end

puts "___________"
print "Question 5: "
puts "What was Daenerys' husbands name?"
###
answers5 = ["Moro", "Rhogoro", "Qotho", "Drogo"]

puts "Choices:"
answers5.each do |answerz|
	puts "#{answerz}"
end
print "answer:"
answer5 = gets.chomp.capitalize!
####
if answer5 == answers5[3]
	puts "*** You Are Correct!!! ***"
	score = score.next
else
	puts "*** Incorrect ***"

end

puts "___________"
print "Question 6: "
puts "Khal Drogo is leader of the ?"
###
answers6 = ["Stormborns", "Dragons", "Qothoraki", "Dothraki"]

puts "Choices:"
answers6.each do |answerz|
	puts "#{answerz}"
end
print "answer:"
answer6 = gets.chomp.capitalize!

####
if answer6 == answers6[3]
	puts "*** You Are Correct!!! ***"
	score = score.next
else
	puts "*** Incorrect ***"

end

puts "___________"
print "Question 7: "
puts "Jaime Lannisters sword is forged form ____ steel ?"
###
answers7 = ["Malarian", "Valyrian", "Tywinian", "Targaryen"]

puts "Choices:"
answers7.each do |answerz|
	puts "#{answerz}"
end
print "answer:"
answer7 = gets.chomp.capitalize!

####
if answer7 == answers7[1]
	puts "*** You Are Correct!!! ***"
	score = score.next
else
	puts "*** Incorrect ***"

end

puts "___________"
print "Question 8: "
puts "Arya is of the house?"
###
answers8 = ["Stark", "Lannister", "Tywin", "Targaryen"]

puts "Choices:"
answers8.each do |answerz|
	puts "#{answerz}"
end
print "answer:"
answer8 = gets.chomp.capitalize!

####
if answer8 == answers8[0]
	puts "*** You Are Correct!!! ***"
	score = score.next
else
	puts "*** Incorrect ***"

end

puts "___________"
print "Question 9: "
puts "Which Stark was the First King of the North?"
###
answers9 = ["Eddard", "Robb", "Brandon", "Jon"]

puts "Choices:"
answers9.each do |answerz|
	puts "#{answerz}"
end
print "answer:"
answer9 = gets.chomp.capitalize!

####
if answer9 == answers9[0]
	puts "*** You Are Correct!!! ***"
	score = score.next
else
	puts "*** Incorrect ***"

end

puts "___________"
print "Question 10: "
puts "What is the symbol of the House of Stark?"
###
answers10 = ["Lion", "Bear", "Dragon", "Direwolf"]

puts "Choices:"
answers10.each do |answerz|
	puts "#{answerz}"
end
print "answer:"
answer10 = gets.chomp.capitalize!

####
if answer10 == answers10[3]
	puts "*** You Are Correct!!! ***"
	score = score.next
else
	puts "*** Incorrect ***"

end

questions = 10
total = (score.to_f / questions.to_f)
total_decimal = (total * 100) 
puts
puts
print "YOU SCORED "
print total_decimal.truncate
puts "%"  
puts "___________"
puts
puts "END GAME"
puts "___________"





