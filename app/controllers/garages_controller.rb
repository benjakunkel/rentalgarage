class GaragesController < ApplicationController
  before_action :set_garage, only: %i(show edit update destroy)
  
  def index
    @garages = Garage.all
  end

  def show
    @reservations = Reservation.new
  end

  def new
    @garage = Garage.new
  end

  def create
    @garage = Garage.new(garage_params)
    @garage.user = current_user
    if @garage.save
      redirect_to garage_path(@garage)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @garage.update(garage_params)
    redirect_to garage_path(@garage)
  end

  def destroy
    @garage.delete
    redirect_to garage_path 
  end

  private

  def garage_params
    params.require(:garage).permit(%i(title description address availability phone_number dimensions price_per_day price_per_hour photo))
  end

  def set_garage
    @garage = Garage.find(params[:id])
  end
end
