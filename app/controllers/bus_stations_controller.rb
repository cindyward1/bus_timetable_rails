class BusStationsController < ApplicationController
  def index
    @stations = BusStation.all
  end

  def new
    @station = BusStation.new
  end

  def create
    @station = BusStation.new(params[:station_params])
    @station.station_name = params[:bus_station][:station_name]
    if @station.save
      flash[:notice] = "Bus station created"
      redirect_to bus_stations_path
    else
      render 'new'
    end
  end

  def edit
    @station = BusStation.find(params[:id])
  end

  def update
    @station = BusStation.find(params[:id])
    if @station.update(:station_name => params[:bus_station][:station_name])
      flash[:notice] = "Bus station updated"
      redirect_to bus_stations_path
    else
      render 'edit'
    end
  end

  def destroy
    @station = BusStation.find(params[:id])
    @station.destroy
    flash[:notice] = "Bus station deleted"
    redirect_to bus_stations_path
  end
end
