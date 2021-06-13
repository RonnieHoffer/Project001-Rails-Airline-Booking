class AircraftsController < ApplicationController

    def index
        @aircrafts = Aircraft.all
    end

    def new
        @aircraft = Aircraft.new
    end

    def edit
        @aircraft = Aircraft.find(params[:id])
    end

    def create
        @aircraft = Aircraft.new(aircraft_params)
        if @aircraft.save
            redirect_to aircrafts_url
        else
            render plain: "Sorry.  Aircraft was not created."
            # render :new
        end
    end

    def update
        @aircraft = Aircraft.find(params[:id])
        
        if @aircraft.update_attributes(aircraft_params)
            redirect_to aircraft_path
        else
            render :edit
        end
    end

    def destroy
        @aircraft = Aircraft.find(params[:id])
        @aircraft.destroy
        redirect_to aircrafts_url
    end

    def show
        @aircraft = Aircraft.find(params[:id])
    end


    private
    def aircraft_params
        params.require(:aircraft).permit(:model, :economy_seats, :business_seats, :first_class_seats)
    end


end
