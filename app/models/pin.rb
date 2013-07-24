class Pin < ActiveRecord::Base
  attr_accessible :lat, :lng, :name, :user_id
  belongs_to :user
  default_scope order('created_at DESC')
  validates_uniqueness_of :lat, :scope => [:lng, :user_id]
end
