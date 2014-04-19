class Page < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  searchkick text_start: [:title, :summary]

  mount_uploader :header_image, ImageUploader
end
