require_relative 'creator'
require_relative 'display'
require_relative 'vecinos'


class Iniciar
 def initialize
    print "Elige el ancho del tablero: "
    $width = gets.chomp.to_i
    
    print "Elige el alto del tablero: "
    $height = gets.chomp.to_i

    fm=Creator.new.create_first_matrix($height,$width)
    Display.new.display_matrix(fm)

    nm=Neighbours.new.find_neighbour(fm)
    #Display.new.display_matrix(nm)
    
    #ciclo infinito
    loop do
       fm=nm
       nm=Neighbours.new.find_neighbour(fm)
       Display.new.display_matrix(nm)
       sleep(1)
    end



    
  end
end