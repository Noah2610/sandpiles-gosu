module Sandpiles
  class Settings
    def initialize filename
      @content = YAML.load_file(filename).keys_to_sym
    end

    def get *keys
      current_content = @content
      keys.each do |key|
        key = key.to_sym  if (key.is_a? String)
        if (current_content.is_a?(Hash) && current_content[key])
          current_content = current_content[key]
        else
          current_content = nil
          break
        end
      end
      return current_content
    end
  end
end
