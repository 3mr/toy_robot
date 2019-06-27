module Commandable
  extend ActiveSupport::Concern

  included do
    def analys_commands(moves_string)
      commands = []
      moves_string.split("\n").each do |command|
        command_and_handler = {}
        command_and_handler[:text] = command
        command_and_handler[:method_to_call] = detect_callable_method(command)
        commands << command_and_handler
      end
      commands
    end

    def detect_callable_method(command)
      if command.include?('PLACE') || command.include?('MOVE')
        'move'
      elsif command.include?('LEFT') || command.include?('RIGHT')
        'rotate'
      elsif command.include?('REPORT')
        'report'
      end
    end
  end
end
