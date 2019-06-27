class BrainController < ApplicationController
  # hooks
  before_action :load_entities

  def think
    commands = CommandsAnalyserService.execute(params[:moves])

    commands.each do |command|
      puts command.inspect
    end
  end

  protected
  def load_entities
    @robot = Robot.first
  end
end
