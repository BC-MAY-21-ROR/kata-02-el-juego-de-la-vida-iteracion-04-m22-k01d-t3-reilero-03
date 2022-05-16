require_relative 'creator'
require_relative 'display'

class Neighbours

	def find_neighbour(m)

		

		next_matriz=Array.new(m.length){Array.new(m[0].size){}}

		m.each_with_index.map do |array,index_array|

				array.each_with_index.map do |celula,index_celula|
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
          top.push(m[index_array - 1][index_celula], m[index_array - 1][index_celula + 1])
        elsif index_celula == array.length - 1
          top.push(m[index_array - 1][index_celula - 1], m[index_array - 1][index_celula])
        else
          top.push(m[index_array - 1][index_celula - 1], m[index_array - 1][index_celula],
            m[index_array - 1][index_celula + 1])
        end
        

        #Check bottom
        if index_array == (m.length - 1)
          'none'
        elsif index_celula.zero?
          bottom.push(m[index_array + 1][index_celula], m[index_array + 1][index_celula + 1])
        elsif index_celula == (array.length - 1)
          bottom.push(m[index_array + 1][index_celula - 1], m[index_array + 1][index_celula])
        else
          bottom.push(m[index_array + 1][index_celula - 1],m[index_array + 1][index_celula], m[index_array + 1][index_celula + 1])
        end
        

        neighboors=left+right+top+bottom
        total_neighboors = neighboors.sum

        


        #Rules implementation
        if celula==1
          if  total_neighboors<2 || total_neighboors>3
            next_matriz[index_array][index_celula]=0
          elsif total_neighboors==2 || total_neighboors==3
            next_matriz[index_array][index_celula]=1
          end
        else #celula==0
          if total_neighboors==3
            next_matriz[index_array][index_celula]=1
          else
            next_matriz[index_array][index_celula]=0

          end







   end
  end
 end
 neighboors=[]
 next_matriz
end
end



