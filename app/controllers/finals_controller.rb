class FinalsController < ApplicationController
  before_action :authenticate_admin!, only: [:create]
  
  def create
    @booking = Booking.find(params[:booking_id])
    @final = Final.create(params[:final].permit(:full_money))#
    
    if user_signed_in?
      @final.user_id = @booking.user.id
    elsif admin_signed_in?
      @final.admin_id = @booking.admin_id
    end
    
    @final.booking_id = @booking.id
        
    if @final.save
      redirect_to booking_path(@booking)
    else
      render 'new'
    end
    
  end
  
  def new
    @booking = Booking.find(params[:booking_id])
    @final = @booking.finals.build
  end
  
end
