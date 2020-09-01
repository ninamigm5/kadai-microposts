class Micropost < ApplicationRecord
  belongs_to :user

  validates :content, presence: true, length: { maximum: 255 }
  #お気に入り start ===========================================================================
  has_many :favorites
  has_many :likes, through: :favorites, source: :user

  #お気に入り end   ===========================================================================
end