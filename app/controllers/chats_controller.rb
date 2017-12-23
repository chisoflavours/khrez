class ChatsController < ApplicationController
  
  def create
    @booking = Booking.find(params[:booking_id])
    @chat = Chat.create(params[:chat].permit(:content))#
    
    if user_signed_in?
      @chat.user_id = @booking.user.id
    elsif admin_signed_in?
      @chat.admin_id = @booking.admin_id
    end
    
    @chat.booking_id = @booking.id
        
    if @chat.save
      redirect_to booking_path(@booking)
    else
      render 'new'
    end
    
  end
end
