class Video < ApplicationRecord
  has_one_attached :video
  # belongs_to :user
end
