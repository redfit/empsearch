class Photo < ActiveRecord::Base
  attr_accessible :gallery_id, :name, :description, :photo
  belongs_to :gallery

  validates_presence_of :name, :photo

  mount_uploader :photo, PhotoUploader
end
