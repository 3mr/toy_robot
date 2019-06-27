module Reportable
  extend ActiveSupport::Concern

  included do
    def report(report_type)
      puts ">  I will report #{report_type}"
    end
  end
end
