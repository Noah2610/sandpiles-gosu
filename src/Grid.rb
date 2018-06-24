module Sandpiles
  class Grid
    def initialize settings
      @cycles = settings[:cycles]
      create_cells settings[:cells]
      add_grains_to_center_cell settings[:grains]
    end

    def get_neighbor_cells_of cell
      return [-1,0,1].map do |offset_y|
        next [-1,0,1].map do |offset_x|
          next nil  if     (offset_y == 0 && offset_x == 0)
          next nil  unless (offset_y == 0 || offset_x == 0)
          index_y = cell.get_index(:y) + offset_y
          index_x = cell.get_index(:x) + offset_x
          next @cells[index_y][index_x]  if (index_y >= 0 && index_x >= 0 && index_y < @cells.size && index_x < @cells.first.size)
          next nil
        end
      end .flatten .reject { |x| !x }
    end

    def create_cells settings
      size = settings[:size]
      rows    = (GAME.get_size(:height).to_f / size[:height].to_f).floor
      columns = (GAME.get_size(:width).to_f  / size[:width].to_f ).floor
      @cells = rows.times.map do |row|
        next columns.times.map do |col|
          next Cell.new(
            grid:       self,
            index_y:    row,
            index_x:    col,
            size:       size,
            colors:     settings[:colors],
            max_grains: settings[:max_grains]
          )
        end
      end
    end

    def add_grains_to_center_cell grains
      cell = get_center_cell
      cell.add_grains grains
    end

    def get_center_cell
      center_row = @cells[(@cells.size * 0.5).floor]
      return center_row[(center_row.size * 0.5).floor]
    end

    def update
      @cycles.times do
        @cells.flatten.each &:topple_start
        @cells.flatten.each &:topple_finish
      end
    end

    def draw
      @cells.flatten.each &:draw
    end
  end
end
