class Recruitment < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :requests, dependent: :destroy
  has_many :likes, dependent: :destroy
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :music_genre
  belongs_to :organizer
  validates :title, presence: true
  validates :date, presence: true
  validates :content, presence: true
  validates :price, presence: true
end
