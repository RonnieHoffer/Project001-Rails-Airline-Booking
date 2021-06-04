class AircraftsController < ApplicationController

    def index
        @aircrafts = Aircraft.all
    end

    def new
        
    end

    def edit
    end

    def create
    end

    def update
    end

    def destroy
    end

    def show
        @aircraft = Aircraft.find(params[:id])
    end

end
