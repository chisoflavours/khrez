class CommentsController < ApplicationController

  before_action :find_comment, only: [:destroy]
  before_action :authenticate_user!, only: [:create]
  
  def create
    @venue = Venue.find(params[:venue_id])
    @comment = Comment.create(params[:comment].permit(:content))
    @comment.user_id = current_user.id
    @comment.venue_id = @venue.id
        
    if @comment.save
      redirect_to venue_path(@venue)
    else
      render 'new'
    end
  end
    
end
