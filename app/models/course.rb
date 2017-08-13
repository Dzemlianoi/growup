class Course < ApplicationRecord
  extend FriendlyId
  friendly_id :slug, use: :slugged

  scope :active, -> { where(is_active: true) }
  scope :by_order, -> { order(:order) }
end
