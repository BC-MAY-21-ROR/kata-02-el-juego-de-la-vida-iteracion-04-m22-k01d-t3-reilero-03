
# representación gráfica de la matriz
class Display
  
	def display_matrix(m)

     m.each_with_index do |fila_array,fila_index|
    fila_array.each_with_index do |col,col_index|
      if m[fila_index][col_index]==1
        print "o"
       else
        print " "
      end
    end
    print "\n"
   end

	
  end  

end

