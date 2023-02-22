class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, format: { with: /\A[012345]\z/ }, numericality: { only_integer: true }


end
