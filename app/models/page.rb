require 'elasticsearch/model'

class Page < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  mount_uploader :header_image, ImageUploader
end
