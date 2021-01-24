class Recruitment < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :requests, dependent: :destroy
  belongs_to_active_hash :prefecture
  belongs_to :organizer
end
