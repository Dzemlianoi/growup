class Course < ApplicationRecord
  extend FriendlyId
  friendly_id :slug, use: :slugged

  has_many :groups

  scope :active, -> { where(is_active: true) }
  scope :by_order, -> { order(:order) }
end
