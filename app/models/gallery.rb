class Gallery < ActiveRecord::Base
  has_many :photos
  validates_presence_of :name, :description
end
