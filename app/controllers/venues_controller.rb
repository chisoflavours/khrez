class VenuesController < ApplicationController
    
    before_action :find_venue, only: [:show, :edit, :update, :destroy]
    
    def index
        @venue = Venue.all.order("created_at DESC")
    end
    
    def show
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
    
    def find_venue
        @venue = Venue.find(params[:id])
    end
    
    def venue_params
        params.require(:venue).permit(:name,:description,:category,:price,:price_plan,:postcode,:county,
        :street_line_one,:street_line_two,:city,:capacity_standing,:capacity_sitting,:size,:parking_spaces,
        :kitchens,:disabled_acess,:outside_spaces,:toilets,:tables,:chairs,:extra_info,:external_catering_allowed,
        :external_alcahool_allowed,:inhouse_catering_provided,:inhouse_alcahool_provided,:storage,:air_conditionind,
        :wifi,:projector)
    end
    
end
