class Robot < ApplicationRecord
  include Commandable
  include Movable
  include Reportable
  include Rotatable
  include Dropable

  enum facing: [:north, :south, :east, :west]
end
