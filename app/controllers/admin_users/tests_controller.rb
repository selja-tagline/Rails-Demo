class AdminUsers::TestsController < ApplicationController

    before_action :set_post, only: %i[ show edit ]
    def index
        p "::::::: index called ::::::"
        @admin_users = AdminUser.all
    end

    # GET /posts/1 or /posts/1.json
    def show
        p "::: Show Admin User Data :::"
    end
 
    def edit
        p "::: Edit Action Called :::"
    end

    private

    def set_post
        @admin_user = AdminUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
        params.require(:admin_user).permit(:email, :user_id)
    end
end