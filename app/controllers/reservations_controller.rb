class ReservationsController < ApiController
  before_action :set_reservation, only: [:show, :update, :destroy]
  before_action :require_login, except: [:index, :show]

  def index
    @reservations = Reservation.all
    render json: {reservations: @reservations}
  end

  def show
    @reservation = Reservation.find(params[:customer_id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @game = Game.find_by(params[:game_id])
    @reservation.customer = current_user
    @reservation.game = @game


    if(@reservation.save)
      render json: { message: 'Your reservation has been created', reservation; @reservation }
    else
      render json: { message: "Reservation not created" }
    end
  end


  def update
    if @reservation.update(reservation_params)
      render json: @reservation
    else
      render json: { message: "There was an error updating the reservation" }
    end
  end


  def destroy
    @reservation.destroy
  end


  private

  def set_reservation
    @reservation = Reservation.find(param[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:game_id, :customer_id, :reservation_date, :reservation_length, :start_time, :end_time )

end
