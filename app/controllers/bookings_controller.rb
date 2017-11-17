class BookingsController < ApplicationController
    before_action :authenticate_user!, only: [:create]
    def create
        @venue = Venue.find(params[:venue_id])
        @booking = Booking.create(params[:booking].permit(:guests,:time,:date))
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
    @booking = Booking.where(admin_id: current_admin).order('created_at DESC')
  end
  
  def show
    @booking = Booking.find(params[:id])
    @booking = @venue.booking.find(params[:id])
  end

end
