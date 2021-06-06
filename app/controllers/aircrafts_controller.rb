class AircraftsController < ApplicationController

    def index
        @aircrafts = Aircraft.all
    end

    def new
    end

    def edit
    end

    def create
        @aircraft = Aircraft.new
        @aircraft.model = params[:model]
        @aircraft.economy_seats = params[:economy_seats]
        @aircraft.business_seats = params[:business_seats]
        @aircraft.first_class_seats = params[:first_class_seats]
        if @aircraft.save
            redirect_to '/aircrafts'
        else
            render plain: "Sorry.  Aircraft was not created."
        end
    end

    def update
    end

    def destroy
    end

    def show
        @aircraft = Aircraft.find(params[:id])
    end

end
