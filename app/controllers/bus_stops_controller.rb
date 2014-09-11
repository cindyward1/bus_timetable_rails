class BusStopsController < ApplicationController
  def index
    @stops = BusStop.all
  end

  def new
    @stop = BusStop.new
  end

  def create
    @stop = BusStop.new(params[:bus_stop])
    if @stop.save
      flash[:notice] = "Bus stop created."
      redirect_to bus_stops_path
    else
      render 'new'
    end
  end

  def show
    @stop = BusStop.find(params[:id])
  end

  def edit
    @stop = BusStop.find(params[:id])
  end

  def update
    @stop = BusStop.find(params[:id])
    if @stop.update(params[:bus_stop])
      flash[:notice] = "Bus stop updated."
      redirect_to bus_stop_path(@stop)
    else
      render 'edit'
    end
  end

  def destroy
    @stop = BusStop.find(params[:id])
    @stop.destroy
    flash[:notice] = "Bus stop deleted."
    redirect_to bus_stops_path
  end
end
