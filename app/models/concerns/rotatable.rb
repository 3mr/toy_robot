module Rotatable
  extend ActiveSupport::Concern

  included do
    def rotate(rotate_direction)
      puts ">  I will rotate #{rotate_direction}"
    end
  end
end
