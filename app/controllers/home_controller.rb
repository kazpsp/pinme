class HomeController < ApplicationController
  def index
    
  end
  
  def show
    @lat=params[:lat]
    @lng=params[:lng]
    @name = params[:name]
    Pin.create(:lat => @lat, :lng => @lng, :name => @name, :user_id => current_user.id)
  end
end
