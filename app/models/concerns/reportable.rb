module Reportable
  extend ActiveSupport::Concern

  included do
    def report(report_type)
      puts '=' * 100
      puts '=' * 100
      puts "#{self.x},#{self.y},#{self.facing.upcase}"
      puts '=' * 100
      puts '=' * 100
    end
  end
end
