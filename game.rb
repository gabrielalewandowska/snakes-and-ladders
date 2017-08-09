require_relative("../player")
require_relative("../dice")
require_relative("../board")

board = Board.new
dice = Dice.new
puts "Welcome to Snakes and Ladders! What's your name?"
player_name = gets.chomp
puts "Choose your colour:"
colour = gets.chomp
player = Player.new(player_name, colour)

puts "Type 'roll' if you want to roll a dice!"

action = gets.chomp

if action == "roll"
  dice.roll
  player.move(dice.result)
end


puts "You rolled a #{dice.result}! You've landed on a #{player.position_type} tile."

if (board.tiles[player.position] > 0)

end
