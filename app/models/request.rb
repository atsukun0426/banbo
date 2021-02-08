class Request < ApplicationRecord
  mount_uploader :musicfile, AudiofileUploader
  belongs_to :user
  belongs_to :recruitment
  validates :name, presence: true
  validates :group_name, presence: true
  validates :email, presence: true
end
