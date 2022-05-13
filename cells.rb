
require'cell'
require_relative './board'
class Cells
    def cell_matrix
        @matrix = Array.new(@column){Array.new(@row){[true, false].sample}}
        initial_cells
    end
    def initial_cells
        middle_row = @width/2
        middle_col = @height/2
        @matrix[middle_row][middle_col] = true
        @matrix[middle_row-1][middle_col] = true
        @matrix[middle_row+1][middle_col] = true
        @matrix[middle_row][middle_col-1] = true
        @matrix[middle_row-1][middle_col+1] = true
    end
    def next_generation
        snapshot = matrix_snapshot
        width_real = @width - 1
        height_real = @height - 1
        @matrix.each_with_index do |row, i|
          row.each_with_index do |cell, j|
            next if i == 0 || j == 0 || i == height_real || j == width_real # Evitar iterar en las orillas de la matrix.
            alive_neighbours_count = alive_neighbours_count(snapshot, i, j)
            first_rule(alive_neighbours_count, i, j)
            second_rule(alive_neighbours_count, i, j)
            thrid_rule(alive_neighbours_count, i, j)
            fourth_rule(alive_neighbours_count, i, j)
          end
        end
    end

    def print_matrix
        @matrix.each do |row|
          row.each do |cell|
            if cell == true
              print '*'
            else
              print '.'
            end
          end
          puts
        end
    end
end
