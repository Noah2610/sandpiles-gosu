module Sandpiles
  class Cell
    def initialize args = {}
      @grid          = args[:grid]
      @index_x       = args[:index_x]
      @index_y       = args[:index_y]
      @size          = args[:size]
      @colors        = args[:colors]
      @max_grains    = args[:max_grains]
      @grains        = args[:grains] || 0
      @grains_to_add = 0
      @x             = (@index_x * @size[:width] ).round
      @y             = (@index_y * @size[:height]).round
    end

    def get_index target = :all
      return @index_x  if (target == :x)
      return @index_y  if (target == :y)
      return {
        x: @index_x,
        y: @index_y
      }  if (target == :all)
    end

    def get_grains
      return @grains
    end

    def add_grains grains
      #add_grains_to_add grains
      @grains += grains
    end

    def topple_start
      return  if (@grains <= @max_grains)
      @grains_to_add += -(@max_grains + 1)
      grains_to_add = ((@max_grains + 1).to_f / 4.0).floor
      @grid.get_neighbor_cells_of(self).each do |cell|
        cell.add_grains_to_add grains_to_add
      end
    end

    def topple_finish
      @grains += @grains_to_add
      @grains_to_add = 0
    end

    def add_grains_to_add grains
      @grains_to_add += grains
    end

    def draw
      Gosu.draw_rect(
        @x, @y,
        @size[:width], @size[:height],
        get_color
      )
    end

    private

    def get_color
      return @colors[@grains]  if (@colors.key? @grains)
      return @colors[:default]
    end
  end
end
