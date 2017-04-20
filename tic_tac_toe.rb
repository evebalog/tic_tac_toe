require './lib/board'

board = Board.new
board.game
while !board.is_finished? do
  puts "Mark a field between 0-8!"
  number = gets.chomp.to_i
  board.mark(number)
  puts "You picked #{number}, lucky you!"
  board.game
  puts "Your turn, Spongebob!"
end

puts "Game over!"
