class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    protect_from_forgery with: :null_session

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
    end
    def after_inactive_sign_up_for(resource)
        flavors_path
    end
    def after_sign_in_path_for(resource)
        flavors_path
    end
    def after_sign_out_path_for(resource)
        root_path
    end
end
