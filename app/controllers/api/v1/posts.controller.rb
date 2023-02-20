class Api::V1::PostsController < ApplicationController
  before_action :set_post, only: [ :show ]

  def index
    @posts = current_user.posts
  end

  def show
    render json: @post, status: :ok
  end

  private
  def set_post
      @post = current_user.posts.find(params:[:id])
      rescue ActiveRecord::RecordNotFound => error
        render json: error.message, status: :unauthorized
      end
  end
end