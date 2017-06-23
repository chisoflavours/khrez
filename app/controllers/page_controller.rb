class PageController < ApplicationController
  def index
    @venue = Venue.limit(16).order("created_at DESC")
  end
  
  def about
  end

  def privacypolicy
  end

  def termsandconditions
  end

  def listyourvenue
  end
end
