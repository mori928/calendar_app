class Reservation < ApplicationRecord

  def index
    @reservations = Reservation.all
  end
  
end

