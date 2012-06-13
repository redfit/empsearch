class Like < ActiveRecord::Base
  attr_accessible :user_id, :likable_id, :likable_type
  belongs_to :user
  belongs_to :likable, polymorphic: true
end
