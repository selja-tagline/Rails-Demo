class ApplicationController < ActionController::Base
    # before_action :authenticate_user!
    # before_filter :configure_permitted_parameters, if: :devise_controller?
    before_action :configure_permitted_parameters, if: :devise_controller?
    private

    def after_sign_out_path_for(resource_or_scope)
        new_user_session_path
    end

    # def configure_permitted_parameters
    #     devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    # end

    # def configure_permitted_parameters
    #     devise_parameter_sanitizer.permit(:sign_in) do |user_params|
    #       user_params.permit(:name, :email)
    #     end
    # end

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation, :remember_me, :age) }
        devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:name, :password, :remember_me) }
        # devise_parameter_sanitizer.permit(:account_update) { |u| u.permit( :name, :email, :password, :password_confirmation, :current_password) }
    end
    
end
