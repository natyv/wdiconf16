require 'open-uri'

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

    if params[:website].include? "http"
      new_sponsor.website = params[:website]
    else
      new_sponsor.website = "http://#{params[:website]}"
    end
    # new_sponsor.save

    # process charge with stripe.
    Stripe.api_key = "sk_test_OgmM5tL6FSzS7ULyDFIuUYbn"
    token = params[:stripeToken]
    # Create the charge on Stripe's servers - this will charge the user's card
    flash[:notice] = "Thanks for buying a Ticket to WDI Conf!! "
    # sending conformation email
    Pony.mail({
  	:from => 'isha.negi19@gmail.com',
    :to => "#{params[:email]}",
    :subject => "Ticket Confirmation from WDIConf 2016",
    :body => "Dear #{params[:first_name]}, Thanks for purchasing a WDIConf Ticket. Your ticket number is #{params[:stripeToken]}. Regards, WDI.",
    :via => :smtp,
    :via_options => {
      :address              => 'smtp.gmail.com',
      :port                 => '587',
      :enable_starttls_auto => true,
      :user_name            => 'johnmann778@gmail.com',
      :password             => 'password18*',
      :authentication       => :plain,
      :domain               => "localhost.localdomain"
    }
  })
    begin
      charge = Stripe::Charge.create(
        :amount => params[:amount].to_i * 100, # amount in cents, again
        :currency => "aud",
        :source => token,
        :description => "Sponsor amount"
      )
      if charge
        new_sponsor.save
      end
    rescue Stripe::CardError => e
      # The card has been declined
      render :err_show, status: :payment_required, json: @err
      return
    rescue Stripe::InvalidRequestError => e
      @err = stripe_error(e, 'cancellation_invalid_request')
      render :err_show, status: :payment_required, json: @err
      return
    rescue Stripe::AuthenticationError => e
      @err = stripe_error(e, 'cancellation_authentication')
      render :err_show, status: :payment_required, json: @err
      return
    rescue Stripe::APIConnectionError => e
      @err = stripe_error(e, 'cancellation_api_connect')
      render :err_show, status: :payment_required, json: @err
      return
    rescue Stripe::StripeError => e
      @err = stripe_error(e, 'cancellation_generic error')
      render :err_show, status: :payment_required, json: @err
      return
    rescue => e
      @err = stripe_error(e, 'cancellation_something_else')
      render :err_show, status: :payment_required, json: @err
      return
    end
    redirect_to '/'

  end

  def sponsor_logo
    image_url = params[:url]
    size = params[:size]
    image = open(image_url)
    send_data Sponsor.convert_logo(image, size)
  end


end
