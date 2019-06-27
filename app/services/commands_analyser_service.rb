class CommandsAnalyserService
  class << self
    def execute(moves_string)
      commands = []
      moves_string.split("\n").each do |command|
        command_and_handler = {}
        command_and_handler[:text] = command
        command_and_handler[:handler] = detect_command_handler(command)
        commands << command_and_handler
      end
      commands
    end

    def detect_command_handler(command)
      if command.include?('PLACE') || command.include?('MOVE')
        'MovementHandlerService'
      elsif command.include?('LEFT') || command.include?('RIGHT')
        'RotationHandlerService'
      elsif command.include?('REPORT')
        'ReportingHandlerService'
      end
    end

  end
end
