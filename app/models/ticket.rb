class Ticket < ActiveRecord::Base

  def my_save(token)
    Stripe.api_key = "sk_test_OgmM5tL6FSzS7ULyDFIuUYbn"
    # Create the charge on stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :amount => 20000, # amount in cents
        :currency => "aud",
        :source => token,
        :description => "Ticket purchase"
      )
    rescue Stripe::CardError => e
      # The card has been declined
    end
    self.save
  end
end
