require './cells'
require_relative './check_logic'
require_relative 'board'

class Main
  
end

juego = Main.new
valores=Board.new.values
get_matriz_base=Board.new.create_board
CheckLogic.check_logic.new($row,$column)
juego.get_matriz_final