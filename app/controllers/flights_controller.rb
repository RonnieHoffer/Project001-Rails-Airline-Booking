class FlightsController < ApplicationController

    def index
        @flights = Flight.all
    end

    def new
        @flight = Flight.new
    end

    def edit
    end

    def create
        @flight = Flight.new(flight_params)
        if @flight.save
            redirect_to flights_url
        else
            render plain: "Sorry.  Flight was not created."
            #render :new
        end
    end

    def update
    end

    def destroy
    end

    def show
        @flight = Flight.find(params[:id])
        @aircraft = Flight.find(params[:id]).aircraft
        a = Flight.find(params[:id]).depart_airport_id
        @departure_airport = Airport.find(a)
        b = Flight.find(params[:id]).arriv_airport_id
        @arrival_airport = Airport.find(b)

    end


    private
    def flight_params
        params.require(:flight).permit(
            :flight_number, 
            :aircraft_id, 
            :depart_airport_id, 
            :arriv_airport_id, 
            :date, 
            :depart_time, 
            :arrive_time
        )
    end

end
