class AdminsController < ApplicationController

  def show
    @sponsors = Sponsor.all
  end



end
