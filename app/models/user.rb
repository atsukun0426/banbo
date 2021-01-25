class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  mount_uploader :image, ImagesUploader
  has_many :user_rooms
  has_many :chats
  has_many :requests, dependent: :destroy
  has_many :likes, dependent: :destroy

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
