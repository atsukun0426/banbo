class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
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

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.username = 'ゲスト'
      user.password = SecureRandom.urlsafe_base64
      user.password_confirmation = user.password
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
  end
end
