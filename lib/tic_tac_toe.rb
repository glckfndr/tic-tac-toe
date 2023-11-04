require_relative 'tic_tac_toe/game'

game_type = ''
loop do
  print 'Do you want to play with computer?(y/n): '
  game_type = gets.chomp.downcase
  break if %w[y n].include?(game_type)
end
game = if game_type == 'y'
         Game.new method(:puts), true
       else
         Game.new method(:puts)
       end
game.play
