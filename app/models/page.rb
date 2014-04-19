class Page < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  mount_uploader :header_image, ImageUploader
end
