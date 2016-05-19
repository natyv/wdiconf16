require 'stripe'

class TicketsController < ApplicationController

  def index
    @sponsors = Sponsor.all
  end

  def tickets
  end

  def submit
    new_ticket = Ticket.new
    new_ticket.first_name = params[:firstname]
    new_ticket.last_name = params[:lastname]
    new_ticket.email = params[:email]
    new_ticket.ref_id = params[:stripeToken]
    # create charge in ticket model
    new_ticket.my_save(params[:stripeToken])
    # get response from strip API.
    redirect_to '/'
  end

end
