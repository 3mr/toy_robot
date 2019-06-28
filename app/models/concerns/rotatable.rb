module Rotatable
  extend ActiveSupport::Concern
  ANGLES = { north: 0, east: 90, south: 180, west: 270 }
  included do
    def rotate(rotate_direction)
      current_angle = ANGLES[self.facing.to_sym]
      case rotate_direction
      when 'RIGHT'
        current_angle += 90
      when 'LEFT'
        current_angle -= 90
      end

      current_angle = current_angle % 360
      self.facing = ANGLES.key(current_angle) if ANGLES.has_value?(current_angle)
    end
  end
end
