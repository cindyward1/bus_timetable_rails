class BusLinesController < ApplicationController
  def index
    @lines = BusLine.all.order(:line_name)
  end

  def new
    @line = BusLine.new
  end

  def create
    @line = BusLine.new(params[:line_params])
    @line.line_name = params[:bus_line][:line_name]
    if @line.save
      flash[:notice] = "Bus line created"
      redirect_to bus_lines_path
    else
      render 'new'
    end
  end

  def show
    @line = BusLine.find(params[:id])
  end

  def edit
    @line = BusLine.find(params[:id])
  end

  def update
    @line = BusLine.find(params[:id])
    if @line.update(:line_name => params[:bus_line][:line_name])
      flash[:notice] = "Bus line updated"
      redirect_to bus_lines_path
    else
      render 'edit'
    end
  end

  def destroy
    @line = BusLine.find(params[:id])
    @line.destroy
    flash[:notice] = "Bus line deleted"
    redirect_to bus_lines_path
  end
end
