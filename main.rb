require './questions'
require './players'

player_one = Player.new(1)
player_two = Player.new(2)
counter = 0

while player_one.lives > 0 && player_two.lives > 0
  question = Questions.new
  if counter % 2 == 0
    player_id = player_one.id
    else 
    player_id = player_two.id
    end
  print "Player #{player_id}: "   
  puts "#{question.print_question}"
  print "> " 
  answer = gets.chomp
  check = question.result_checker(answer.to_i)
  if check
    puts "Player #{player_id}: Yes! You are correct"
    puts "P1: #{player_one.lives}/3 vs P2: #{player_two.lives}/3"
    puts "----- NEW TURN -----"
  else
    puts "Player #{player_id}: Seriously? No! "
    if counter % 2 == 0
      player_one.decrease_live
      else 
      player_two.decrease_live
      end
    puts "P1: #{player_one.lives}/3 va P2: #{player_two.lives}/3"
    puts "----- NEW TURN -----"
  end
counter += 1
end
if player_one.lives > player_two.lives
  winner = player_one
else
  winner = player_two
end
puts "Player #{winner.id} wins with the score of #{winner.lives}/3"
puts "----- GAME OVER -----"
puts "Good Bye!"