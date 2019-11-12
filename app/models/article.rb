class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments
  validates :title, :image, presence:true
  validates :title, uniqueness: true
  has_one_attached :image
end
