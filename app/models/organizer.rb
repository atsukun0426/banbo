class Organizer < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  mount_uploader :image, ImagesUploader
  def email_required?
    false
  end

  def email_changed?
    false
  end
end
