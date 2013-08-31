class Page < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  searchable do
    text :title, :body
    string  :sort_title do
      title.downcase.gsub(/^(an?|the)/, '')
    end
  end
end
