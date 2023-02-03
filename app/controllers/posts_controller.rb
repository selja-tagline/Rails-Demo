class PostsController < ApplicationController

  before_action :set_post, only: %i[ show ]
  def index
    p ":::: Post Index called ::::"
  end

  def show
    p ":::: Display Post ::::"
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end
end
