require 'stripe'
require 'pony'

class TicketsController < ApplicationController
  helper_method :sort_column, :sort_direction
  
  def index

    current_tix_price = 200; 
    total_num_of_tix = 200;
    sponsor_amount = 10000; #need to get from database
    ticket_discount = (sponsor_amount / total_num_of_tix);
    @progress_deci = (ticket_discount.to_f / current_tix_price);

    @progress = (@progress_deci * 100);

    @sponsors = Sponsor.order("#{sort_column} #{sort_direction}")
    @speakers = Speaker.all
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
    # sending conformation email
    Pony.mail({
  	:from => 'isha.negi19@gmail.com',
    :to => "#{params[:email]}",
    :subject => "Ticket Confirmation from WDIConf 2016",
    :body => "Dear #{params[:firstname]}, Thanks for purchasing a WDIConf Ticket. Your ticket number is #{params[:stripeToken]}. Regards, WDI.",
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
