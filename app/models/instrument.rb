class Instrument < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  # change category names later
  validates :category, presence: true, acceptance: { accept: ["bowed strings", "wood wind", "brass", "percussions", "keyboard" , "guitar family"] }
  validates :description, presence: true
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name_and_category,
    against: [ :name, :category ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end

