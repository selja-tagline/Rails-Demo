class ApiController < ApplicationController
    # before_action :authenticate_user!
    skip_before_action :verify_authenticity_token

end