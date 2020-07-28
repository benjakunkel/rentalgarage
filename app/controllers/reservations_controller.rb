class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i(show edit update destroy)
 
  def index
    @reservations =  Reservation.where(user: current_user)
  end
  
  def show
  end
  
  def create

    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.save
    redirect_to garage_path(@reservation.garage)
  end
  
  def edit
  end

  def update
    @reservation.update(reservation_params)
    redirect_to reservation_path(@reservation)
  end

  def destroy
    @reservation.destroy
    redirect_to reservations_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_at, :finish_at, :price, :reservation_status, :garage_id)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

end
