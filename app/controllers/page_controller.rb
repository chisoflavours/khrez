class PageController < ApplicationController
  
  def index
    @venue = Venue.limit(15).order("RANDOM()")
  end
  
end
