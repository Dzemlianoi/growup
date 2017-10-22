class Question < ApplicationRecord
  belongs_to :test
  has_many :answers

  enum variant: %i[short long]
end
