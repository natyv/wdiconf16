class SponsorsController < ApplicationController

  def sponsors
  end

  def submit
    new_sponsor = Sponsor.new
    new_sponsor.amount = params[:amount]
    new_sponsor.company_name = params[:company_name]
    new_sponsor.first_name = params[:first_name]
    new_sponsor.last_name = params[:last_name]
    new_sponsor.email = params[:email]
    new_sponsor.image_url = params[:image_url]
    new_sponsor.ref_id = params[:stripeToken]
    new_sponsor.save

    # process charge with stripe.
    Stripe.api_key = "sk_test_OgmM5tL6FSzS7ULyDFIuUYbn"
    token = params[:stripeToken]
    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :amount => params[:amount], # amount in cents, again
        :currency => "aud",
        :source => token,
        :description => "Ticket purchase"
      )
    rescue Stripe::CardError => e
      # The card has been declined
    end
    
  end

end
