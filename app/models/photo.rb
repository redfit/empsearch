class Photo < ActiveRecord::Base
  attr_accessible :gallery_id, :name, :description, :photo
  belongs_to :gallery

  has_many :likes, as: :likable, :dependent => :destroy

  validates_presence_of :name, :photo

  mount_uploader :photo, PhotoUploader
end
