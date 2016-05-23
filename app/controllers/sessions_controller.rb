class SessionsController < ApplicationController

  def new
  end

  def create
    if !params['session']['username'].nil?
      admin = Admin.find_by(username: params['session']['username'].downcase)
      if admin && admin.authenticate(params['session']['password'])
        # Log the user in and redirect to the user's show page.

        session[:admin] = admin
        redirect_to '/admin'
      else
        # Create an error message.

        render 'Wrong username or password'
      end
    end


  end

  def destroy
    session[:admin] = nil
    redirect_to '/'
  end

end
