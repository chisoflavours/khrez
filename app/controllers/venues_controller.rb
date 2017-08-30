class VenuesController < ApplicationController
    
    before_action :find_venue, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_admin!, only: [:new, :edit, :update, :destroy]
    before_action :check_ownership, only: [:edit, :update,:destroy]
    
    def index
        if params[:search]
          @venue = Venue.search(params[:search]).order("RANDOM()")
        else
          @venue = Venue.all.order("RANDOM()")
        end
        
        if admin_signed_in?
          @venue = Venue.where(admin_id: current_admin)
        end
    end
    
    def correct_admin
        @venue = Venue.where(admin_id: current_admin)
    end
       
    
    def show
         @venue = Venue.find(params[:id])
         @venues = Venue.limit(3).order("RANDOM()")
    end
    
    def new
        @venue = current_admin.venues.build
    end
    
    def create
        @venue = current_admin.venues.build(venue_params)
        
        if @venue.save
            redirect_to @venue
        else
            render 'new'
        end
    end
    
    def edit
    end
    
    def update
        if @venue.update(venue_params)
            redirect_to @venue
        else
            render 'edit'
        end
    end
    
    def destroy
        @venue.destroy
        redirect_to root_path
    end
    
    private
    
    def check_ownership
      redirect_to root_path, notice: 'Not Authorized' unless @venue.admin_id == current_admin.id
    end
    
    def find_venue
        @venue = Venue.find(params[:id])
    end
    
    def venue_params
        params.require(:venue).permit(:name,:description,:category,:price,:price_plan,:postcode,:county,
        :street_line_one,:street_line_two,:city,:capacity_standing,:capacity_sitting,:size,:parking_spaces,
        :kitchens,:disabled_acess,:outside_spaces,:toilets,:tables,:chairs,:extra_info,:external_catering_allowed,
        :external_alcahool_allowed,:inhouse_catering_provided,:inhouse_alcahool_provided,:storage,:air_conditionind,
        :wifi,:projector,:thumbnail,:logo )
    end
    
end
