# frozen_string_literal: true

require'matrix'
class Board
  
  def values
    print "Elige alto del tablero: "
    $row=gets.chomp.to_i
    print "Elige ancho del tablero: "
    $column=gets.chomp.to_i
  end

  def create_board
    matriz = Matrix.build($row, $column) { rand(2) }
  end

end
