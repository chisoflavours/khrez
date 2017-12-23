class BookingsController < ApplicationController
    before_action :authenticate_user!, only: [:create]
    def create
        @venue = Venue.find(params[:venue_id])
        @booking = Booking.create(params[:booking].permit(:guests,:time,:date,:finish))
        @booking.user_id = current_user.id
        @booking.venue_id = @venue.id
        @booking.admin_id = @venue.admin_id
        
        if @booking.save
            redirect_to bookings_message_path
        else
            render 'new'
        end
    end
    
    
  def index
     
      if admin_signed_in?
        @booking = Booking.where(admin_id: current_admin).order('created_at DESC')
      elsif user_signed_in?
        @booking = Booking.where(user_id: current_user).order('created_at DESC')
      end
     @venue = Venue.find(params[:venue_id])
  end
  
  def show
     @booking = Booking.find(params[:id])
     @chats = Chat.where(booking_id: @booking)
     @offers = Offer.where(booking_id: @booking).order("created_at DESC").take(1)
     @finals = Final.where(booking_id: @booking).order("created_at DESC").take(1)
  end

end
