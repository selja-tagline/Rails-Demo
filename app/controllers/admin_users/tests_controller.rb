class AdminUsers::TestsController < ApplicationController

    before_action :set_post, only: %i[ show edit update destroy ]
    def index
        p "::::::: index called ::::::"
        @admin_users = AdminUser.all
    end

    # GET /posts/1 or /posts/1.json
    def show
        p "::: Show Admin User Data :::"
    end
 
    def edit    
        p "::: Edit Action Call :::"
    end

    def update
        p "::: Update Action Call :::"
        # respond_to do |format|
        #     if @admin_user.update(admin_user_params)
        #         format.html { redirect_to tests_url(@admin_user), notice: "AdminUser was successfully updated." }
        #         format.json { render :show, status: :ok, location: @admin_user }
        #     else
        #         format.html { render :edit, status: :unprocessable_entity }
        #         format.json { render json: @admin_user.errors, status: :unprocessable_entity }
        #     end
        # end
    end

    def destroy
        p "::: destroy action :::"
        @admin_user.destroy
    
        respond_to do |format|
          format.html { redirect_to tests_url, notice: "admin user was successfully destroyed." }
          format.json { head :no_content }
        end
      end

    private

    def set_post
        p ":: set post ::"
        @admin_user = AdminUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_user_params
        params.require(:admin_user).permit(:email, :user_id)
    end
end