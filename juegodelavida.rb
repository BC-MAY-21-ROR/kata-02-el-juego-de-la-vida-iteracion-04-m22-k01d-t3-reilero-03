class Main

  #Ingersa los valores de alto y ancho
  def ingreso
    print "Elige el ancho del tablero: "
    $width = gets.chomp.to_i
    
    print "Elige el alto del tablero: "
    $height = gets.chomp.to_i
    
    print " \n"
  end

  #Creacion e impresion de matriz base (Generacion 1)
  def get_matriz_base
    $creating_matriz = Array.new($height) { Array.new($width) { rand(2) } }
    print "Generacion 1: \n"
    print "Alto: #{$height} - Ancho: #{$width} \n"

    $creating_matriz.each do |a|
      a.each do |b|
        if b == 0
          print ". "
        else
          print "* "
        end
      end 
      print "\n"
    end
  end

  #Contabilizacion de los vecinos por cada celula
  def check_logic(a,b)
    #Matrices de generacion 2
    $new_matriz = Array.new(a) { Array.new(b) {  } }
    $modify_matriz = Array.new(a) { Array.new(b) {  } }
    
    #Recorrido de matriz celula por celula
    $creating_matriz.each_with_index.map do |array, index_array|
      array.each_with_index.map do |celula, index_celula|
        right = []
        left = []
        top = []
        bottom = []
        
        #Check left to right
        if index_celula.zero?
          right.push(array[index_celula + 1])
        elsif index_celula == (array.length - 1)
          left.push(array[index_celula - 1])
        else
          left.push(array[index_celula - 1])
          right.push(array[index_celula + 1])
        end

        #Check top
        if index_array.zero?
          'none'
        elsif index_celula.zero?
          top.push($creating_matriz[index_array - 1][index_celula], $creating_matriz[index_array - 1][index_celula + 1])
        elsif index_celula == array.length - 1
          top.push($creating_matriz[index_array - 1][index_celula - 1], $creating_matriz[index_array - 1][index_celula])
        else
          top.push($creating_matriz[index_array - 1][index_celula - 1], $creating_matriz[index_array - 1][index_celula],
            $creating_matriz[index_array - 1][index_celula + 1])
        end
        

        #Check bottom
        if index_array == ($creating_matriz.length - 1)
          'none'
        elsif index_celula.zero?
          bottom.push($creating_matriz[index_array + 1][index_celula], $creating_matriz[index_array + 1][index_celula + 1])
        elsif index_celula == (array.length - 1)
          bottom.push($creating_matriz[index_array + 1][index_celula - 1], $creating_matriz[index_array + 1][index_celula])
        else
          bottom.push($creating_matriz[index_array + 1][index_celula - 1],$creating_matriz[index_array + 1][index_celula], $creating_matriz[index_array + 1][index_celula + 1])
        end
        
        neighboors=left+right+top+bottom
        total_neighboors = neighboors.sum


        #Rules implementation
        if celula==1
          if  total_neighboors<2 || total_neighboors>3
            $new_matriz[index_array][index_celula]=0
            $modify_matriz[index_array][index_celula]="."
          elsif total_neighboors==2 || total_neighboors==3
            $new_matriz[index_array][index_celula]=1
            $modify_matriz[index_array][index_celula]="*"
          end
        else #celula==0
          if total_neighboors==3
            $new_matriz[index_array][index_celula]=1
            $modify_matriz[index_array][index_celula]="*"
          else
            $new_matriz[index_array][index_celula]=0
            $modify_matriz[index_array][index_celula]="."

          end
        end
      end
    end
  end


  #Muestra matriz final (Generacion 2)
  def get_matriz_final
    print " \nGeneracion 2: \n"
    print "Alto: #{$height} - Ancho: #{$width} \n"
    $modify_matriz.each do |a|
      print a.join(" ")
      print "\n"
    end
  end

  
end

#Llamado de los metodos
juego = Main.new
juego.ingreso
juego.get_matriz_base
juego.check_logic($height,$width)
juego.get_matriz_final