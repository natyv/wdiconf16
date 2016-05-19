require 'stripe'

class TicketsController < ApplicationController

  def index
  end

  def tickets
  end

  def submit
    # enter customer information in to DB.
    new_ticket = Ticket.new
    new_ticket.first_name = params[:firstname]
    new_ticket.last_name = params[:lastname]
    new_ticket.email = params[:email]
    new_ticket.ref_id = params[:stripeToken]
    new_ticket.save
    # process charge with stripe.
    Stripe.api_key = "sk_test_OgmM5tL6FSzS7ULyDFIuUYbn"
    token = params[:stripeToken]
    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :amount => 5000, # amount in cents, again
        :currency => "aud",
        :source => token,
        :description => "Ticket purchase"
      )
    rescue Stripe::CardError => e
      # The card has been declined
    end
  end

end
