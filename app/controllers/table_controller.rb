class TableController < ApplicationController
  # hooks
  before_action :load_entities

  def surface
  end

  protected
  def load_entities
    @robot = Robot.first
  end
end
