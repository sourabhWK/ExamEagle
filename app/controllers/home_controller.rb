class HomeController < ApplicationController
  # skip_before_action :configure_permitted_parameters, if: :devise_controller?

  def index
    if user_signed_in?
      if current_user.role.eql? "admin"
        redirect_to admin_path
      else
        redirect_to user_path
      end
    end
  end
end
