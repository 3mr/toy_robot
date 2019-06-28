module Reportable
  extend ActiveSupport::Concern

  included do
    def report(report_type)
      puts '=' * 30
      puts '=' * 30
      puts "#{self.x},#{self.y},#{self.facing.upcase}"
      puts '=' * 30
      puts '=' * 30
    end
  end
end
