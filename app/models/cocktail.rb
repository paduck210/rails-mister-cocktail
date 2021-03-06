class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy # destroy also
  has_many :ingredients, through: :doses

  mount_uploader :photo, PhotoUploader

  validates :name, uniqueness: true, presence: true
  validates :photo, presence: true
end
