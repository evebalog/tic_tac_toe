require './lib/board'

board = Board.new
board.game
while !board.has_a_winner? || !board.is_finished?  do
  puts "Mark a field between 0-8!"
  position = gets.chomp.to_i
  board.mark(position)
  puts "You picked #{position}, lucky you!"
  board.game
  puts "Your turn, Spongebob!"
end

puts "Game over!"
