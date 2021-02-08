class Request < ApplicationRecord
  mount_uploader :musicfile, AudiofileUploader
  belongs_to :user
  belongs_to :recruitment
end
