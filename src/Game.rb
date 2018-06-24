module Sandpiles
  class Game < Gosu::Window
    def initialize settings
      @size = settings[:size]
      super(
        @size[:width], @size[:height],
        update_interval: get_update_interval_from_fps(settings[:fps]),
        fullscreen:      settings[:fullscreen]
      )
      self.caption = settings[:caption]
    end

    def create_grid settings
      @grid = Grid.new settings
    end

    def get_size target = :all
      return @size[target]  if (@size.key? target)
      return @size          if (target == :all)
      return nil
    end

    def needs_cursor?
      return true
    end

    def button_down btnid
      case btnid
      when Gosu::KB_Q, Gosu::KB_ESCAPE
        close
      when Gosu::KB_SPACE
        @grid.add_grains_to_center_cell 100
      end
    end

    def update
      @grid.update
    end

    def draw
      @grid.draw
    end

    private

    def get_update_interval_from_fps fps
      return (1.0 / fps.to_f) * 1000
    end
  end
end
