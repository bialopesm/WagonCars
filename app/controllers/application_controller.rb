class ApplicationController < ActionController::Base
  before_action :authenticate_user!
    # [...]
    before_action :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(resource)
      cars_path
    end

    def configure_permitted_parameters
      # For additional fields in app/views/devise/registrations/new.html.erb
      devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :address, :client, :owner])

      # For additional in app/views/devise/registrations/edit.html.erb
      devise_parameter_sanitizer.permit(:account_update, keys: [:user_name, :address, :client, :owner])
    end
end
