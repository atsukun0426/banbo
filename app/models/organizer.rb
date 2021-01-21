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
end
