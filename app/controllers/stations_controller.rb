class StationsController < ApplicationController
    def index
        stations = Station.all
        render json: stations
    end

    def show
        station = Station.find_by(id: params[:id])
        render json: station
    end

    def new
        station = Station.new
        render json: station
    end

    def create
        station = Station.new(stations_params)
        Station.save
        render json: station
    end

    def edit
        station = Station.find_by(id: params[:id])
        render json: station
    end

    def update
        station = Station.find_by(id: params[:id])
        station.update(stations_params)
        render json: station
    end

    def destroy
        station = Station.find_by(id: params[:id])
        station.destroy
        render json: { message: 'deleted!' }
    end

    private

    def stations_params
        params.require(:station).permit(:name)
    end
end
