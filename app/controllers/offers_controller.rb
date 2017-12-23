class OffersController < ApplicationController
  before_action :authenticate_admin!, only: [:create]
  
  def create
    @booking = Booking.find(params[:booking_id])
    @offer = Offer.create(params[:offer].permit(:deposit_price,:time_start,:time_end,:deposit_date,:deposit_guests,:deposit_tandc))#
    
    if user_signed_in?
      @offer.user_id = @booking.user.id
    elsif admin_signed_in?
      @offer.admin_id = @booking.admin_id
    end
    
    @offer.booking_id = @booking.id
        
    if @offer.save
      redirect_to booking_path(@booking)
    else
      render 'new'
    end
    
  end
  
  def new
    @booking = Booking.find(params[:booking_id])
    @offer = @booking.offers.build
  end
end
