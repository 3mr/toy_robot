class Robot < ApplicationRecord
  enum facing: [:north, :south, :east, :west]
end
