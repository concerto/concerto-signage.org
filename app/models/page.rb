class Page < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  searchkick text_start: [:title, :summary]
  mount_uploader :header_image, ImageUploader
  belongs_to :category
  
  scope :v1_help, -> {joins(:category).where(categories: { name: "v1 Help"})}
  scope :help, -> {joins(:category).where(categories: { name: "Help"})}
  scope :announcements, -> {joins(:category).where(categories: { name: "Announcements"})}
end
