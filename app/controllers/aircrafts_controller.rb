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
            redirect_to '/aircrafts'
        else
            render plain: "Sorry.  Aircraft was not created."
            # render :new
        end
    end

    def update
    end

    def destroy
    end

    def show
        @aircraft = Aircraft.find(params[:id])
    end


    private
    def aircraft_params
        params.require(:aircraft).permit(:model, :economy_seats, :business_seats, :first_class_seats)
    end


end
