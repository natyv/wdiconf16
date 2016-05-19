class TicketsController < ApplicationController

  def index
    @donation {
      width: 0;
      current: 1;
    }
  end

  def tickets
  end

  def submit
    new_ticket = Ticket.new
    new_ticket.first_name = params[:firstname]
    new_ticket.last_name = params[:lastname]
    new_ticket.email = params[:email]
    new_ticket.ref_id = params[:stripeToken]
    new_ticket.save
  end

end
