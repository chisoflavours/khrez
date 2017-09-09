class PageController < ApplicationController
  
  before_action :authenticate_chisom!, only: [:dashboard]
  
  def index
    @venue = Venue.limit(30).order("RANDOM()")
  end
  
  def about
  end

  def privacypolicy
  end

  def termsandconditions
  end

  def listyourvenue
  end
  
  def all
    @admin = Admin.all.order("created_at DESC")
  end
  
  def dashboard
    @admin = Admin.all.order("created_at DESC")
  end
  
end
