class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  validates :title, presence: true, uniqueness: true, length: { maximum: 100 }
  validates :overview, presence: true
end
