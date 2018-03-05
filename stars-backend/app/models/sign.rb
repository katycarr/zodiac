class Sign < ApplicationRecord
  has_many :users

  def range
    self.start..self.end
  end
end
