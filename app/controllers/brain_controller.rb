class BrainController < ApplicationController
  # hooks
  before_action :load_entities

  def think
    commands = @robot.analys_commands(params[:moves])

    commands.each do |command|
      @robot.send(command[:method_to_call].to_sym, command[:text])
    end

    puts '.................'
    puts '.................'
    puts @robot.inspect
    puts '.................'
    puts '.................'
  end

  protected
  def load_entities
    @robot = Robot.first
  end
end
