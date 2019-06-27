module Movable
  extend ActiveSupport::Concern

  included do
    def move(move_command)
      handle_place_command(move_command) if move_command.include?('PLACE')
      handle_move_command if move_command.include?('MOVE')
    end

    def handle_place_command(move_command)
      new_place = move_command.split(' ').last.split(',')
      self.update_attributes(
        x: new_place.first.to_i,
        y: new_place.second.to_i,
        facing: new_place.last.downcase
      ) if (new_place.first.to_i <= 4 && new_place.second.to_i <= 4)
    end

    def handle_move_command
      self.update_attribute(:y, self.y + 1) if (self.north? && self.y + 1 <= 4)
      self.update_attribute(:y, self.y - 1) if (self.south? && self.y - 1 >= 0)
      self.update_attribute(:x, self.x + 1) if (self.east? && self.x + 1 <= 4)
      self.update_attribute(:x, self.x - 1) if (self.west? && self.x - 1 >= 0)
    end
  end
end
