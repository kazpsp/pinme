class Pin < ActiveRecord::Base
  attr_accessible :lat, :lng, :name, :user_id
  belongs_to :user
  
  validates_uniqueness_of :lat, :scope => [:lng, :user_id]
end
