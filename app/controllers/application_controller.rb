class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    # before_action :authenticate_post!

    protected

    # def after_sign_in_path_for(resource)
    #     admin_users_dashboard_path
    # end

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:user_id, :email, :password, :password_confirmation, :remember_me) }
        devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:user_id, :password, :remember_me) }
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit( :user_id, :email, :password, :password_confirmation, :current_password) }
    end
end
