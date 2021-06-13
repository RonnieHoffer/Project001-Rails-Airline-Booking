class AirportsController < ApplicationController

    def index
        @airports = Airport.all
    end

    def new
        @airport = Airport.new
    end

    def edit
        @airport = Airport.find(params[:id])
    end

    def create
        @airport = Airport.new(airport_params)
        if @airport.save
            redirect_to airports_url
        else
            render plain: "Sorry.  Airport was not created."
            # render :new
        end
    end

    def update
        @airport = Airport.find(params[:id])
        
        if @airport.update_attributes(airport_params)
            redirect_to airport_path
        else
            render :edit
        end
    end

    def destroy
        @airport = Airport.find(params[:id])
        @airport.destroy
        redirect_to airports_url
    end

    def show
        @airport = Airport.find(params[:id])
    end


    private
    def airport_params
        params.require(:airport).permit(:city, :country)
    end

end
