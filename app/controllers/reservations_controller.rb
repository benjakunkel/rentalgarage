class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i(show edit update destroy)

  def index
    @reservations = Reservation.where(user: current_user)
  end

  def show
  end

  def new
    @garage = Garage.find(params[:garage_id])
    @reservation = Reservation.new
  end

  def create
    @garage = Garage.find(params[:garage_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.garage = @garage
    @reservation.price = (@reservation.finish_at - @reservation.start_at)*@garage.price_per_day
    @reservation.reservation_status = true
    @reservation.save!
    redirect_to reservation_path(@reservation)
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
