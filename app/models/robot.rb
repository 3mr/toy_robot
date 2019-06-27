class Robot < ApplicationRecord
  include Commandable
  include Movable
  include Reportable
  include Rotatable

  enum facing: [:north, :south, :east, :west]
end
