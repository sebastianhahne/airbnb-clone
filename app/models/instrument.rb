class Instrument < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  # change category names later
  validates :category, presence: true, acceptance: { accept: ["chinese", "italian", "japanese", "french", "belgian"] }
  validates :description, presence: true
  has_one_attached :photo
end
