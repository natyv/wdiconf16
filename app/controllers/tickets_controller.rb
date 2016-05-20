require 'stripe'

class TicketsController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
    @sponsors = Sponsor.order("#{sort_column} #{sort_direction}")
    # @sponsors = Sponsor.all
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
    flash[:notice] = "Thanks for buying a Ticket to WDI Conf!! "
    redirect_to '/'
  end


  private
    def sortable_columns
      [ "amount"]
    end

    def sort_column
      sortable_columns.include?(params[:column]) ? params[:column] : "amount"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
    end

end
