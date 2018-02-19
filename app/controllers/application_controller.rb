class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  
  rescue_from Pundit::NotAuthorizedError do
    redirect_to root_url, alert: "You do not have access to do that. Please sign in or sign up."
  end
end
