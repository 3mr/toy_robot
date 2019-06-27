module Dropable
  extend ActiveSupport::Concern

  included do
    def drop
      self.update_attributes!(x: 10, y: 10)
    end
  end
end
