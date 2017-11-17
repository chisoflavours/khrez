class AdminsController < ApplicationController

  before_action :set_admin, only: [:show]

    
  def index
    @admins = Admin.all
    @venue = Venue.where(admin_id: current_admin)
  end
  
  def show
    @venue = Venue.where(admin_id: @admin).order("created_at DESC") 
  end
  

    
  private

  def set_admin
    @admin = Admin.find(params[:id])
  end
  
  
    
end