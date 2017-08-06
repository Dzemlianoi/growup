class Course < ApplicationRecord
  scope :active, -> { where(is_active: true) }
  scope :by_order, -> { order(:order) }
end
