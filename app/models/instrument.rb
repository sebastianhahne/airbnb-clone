class Instrument < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  # change category names later
  validates :category, presence: true, acceptance: { accept: ["guitar", "base", "drums", "key instrument", "string", "wind instrument", "PA", "DJ", "light"] }
  validates :description, presence: true
  has_one_attached :photo
end

