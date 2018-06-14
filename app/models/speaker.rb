class Speaker < ApplicationRecord
  scope :with_talks, -> { includes(:talks) }

  has_many :talks
end
