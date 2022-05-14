# frozen_string_literal: true

require'matrix'
require_relative './cells'

class Board

  # Ingresar dato por consola

  def values
    print "Elige alto del tablero: "
    $row=gets.chomp.to_i
    print "Elige ancho del tablero: "
    $column=gets.chomp.to_i

    print " \n"
  end

  # matriz base
  def create_board
    matriz = Matrix.build($row, $column) { rand(2) }
    get_matriz_base=matriz
  end

end

