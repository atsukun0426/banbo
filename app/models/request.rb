class Request < ApplicationRecord
  mount_uploader :music_file, AudiofileUploader
  belongs_to :user
  belongs_to :recruitment
end
