class Paper < ApplicationRecord
  validates :title, presence: true
  validates :venue, presence: true
  validates :year, numericality: true

  has_and_belongs_to_many :authors

  scope :written_in, -> (y) {where("year = ?", y)}
end
