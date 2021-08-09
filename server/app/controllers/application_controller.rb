class ApplicationController < ActionController::Base
  def check_signed_in
    redirect_to user_cars_path if user_signed_in?
    redirect_to admin_cars_path if admin_signed_in?
  end
end
