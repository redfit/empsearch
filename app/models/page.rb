class Page < ActiveRecord::Base
  attr_accessible :content1, :content2, :content3, :description, :title
  has_many :likes, as: :likable, :dependent => :destroy
end
