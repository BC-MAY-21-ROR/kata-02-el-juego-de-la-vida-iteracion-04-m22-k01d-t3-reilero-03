require_relative 'creator'
require_relative 'display'
require_relative 'vecinos'


class Iniciar
 def initialize
    print "Elige el ancho del tablero: "
    $width = gets.chomp.to_i
    
    print "Elige el alto del tablero: "
    $height = gets.chomp.to_i

    print "Ingrese la cantidad de generaciones desada: "
    $generation = gets.chomp.to_i    
 
    #Display.new.display_matrix(nm)
    
    puts "Condicion inicial/generacion 0 \n"
    puts "Alto: #{$height} - Ancho: #{$width} \n"
    fm=Creator.new.create_first_matrix($height,$width)
    Display.new.display_matrix(fm)
    
    nm=Neighbours.new.find_neighbour(fm)
    
    for generation_count in 1..$generation do
      puts "Generacion #{generation_count}: \n"
      puts "Alto: #{$height} - Ancho: #{$width} \n"
      fm=nm
      nm=Neighbours.new.find_neighbour(fm)
      Display.new.display_matrix(nm)
      sleep(1)
      generation_count=generation_count+1
    end
  end
end