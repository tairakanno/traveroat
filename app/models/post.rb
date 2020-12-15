class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :text, presence: true
  has_one_attached :image
end
