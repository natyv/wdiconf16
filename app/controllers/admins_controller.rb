class AdminsController < ApplicationController

  def show
    @sponsors = Sponsor.all
    @tickets = Ticket.all
  end



end
