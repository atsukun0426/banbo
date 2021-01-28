class Organizer < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  mount_uploader :image, ImagesUploader
  has_many :recruitments, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  def email_required?
    false
  end

  def email_changed?
    false
  end

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |organizer|
      organizer.username = 'ゲスト'
      organizer.password = SecureRandom.urlsafe_base64
      organizer.password_confirmation = organizer.password
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
  end
end
