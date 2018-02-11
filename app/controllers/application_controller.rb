class ApplicationController < ActionController::Base
  include Clearance::Controller
  protect_from_forgery with: :exception

  private

  def comfirmed_logged_in
    unless session[:user_id]
      # basically saying if not - if there is no session ID execute the code below
      flash[:notice] = "You need to log in."
      redirect_to(access_login_path)
      # redirect_to prevents the requested action from running
    end
  end
  
end
