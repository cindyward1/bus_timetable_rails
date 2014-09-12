class BusStopsController < ApplicationController
  def index
    @stops = BusStop.all.order(:stop_name)
  end

  def new
    @stop = BusStop.new
  end

  def create
    @stop = BusStop.new(params[:stop_params])
    @stop.stop_name = params[:bus_stop][:stop_name]
    @stop.stop_time = params[:bus_stop][:stop_time]
    @stop.bus_station_id = params[:bus_stop][:bus_station_id]
    @stop.bus_line_id = params[:bus_stop][:bus_line_id]
    if @stop.save
      flash[:notice] = "Bus stop created"
      redirect_to bus_stops_path
    else
      render 'new'
    end
  end

  def edit
    @stop = BusStop.find(params[:id])
  end

  def update
    @stop = BusStop.find(params[:id])
    if @stop.update(:stop_name => params[:bus_stop][:stop_name],
                    :stop_time => params[:bus_stop][:stop_time],
                    :bus_station_id => params[:bus_stop][:bus_station_id],
                    :bus_line_id => params[:bus_stop][:bus_line_id])
      flash[:notice] = "Bus stop updated"
      redirect_to bus_stops_path
    else
      render 'edit'
    end
  end

  def destroy
    @stop = BusStop.find(params[:id])
    @stop.destroy
    flash[:notice] = "Bus stop deleted"
    redirect_to bus_stops_path
  end
end
