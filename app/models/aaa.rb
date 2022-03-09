class Aaa < ApplicationRecord
  has_one_attached :image

  validates :title, presence: true
  validates :body, presence: true
  validates :date, presence: true
  validates :image, presence: true
end
