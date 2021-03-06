class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def required_admin
    if !current_user.admin?
     redirect_to root_path
    end 
  end
end
