class ArticlesController < ApplicationController
  def index
    p ":::: Display all Articles ::::"
    @articles = Article.all
  end

  def show
    p ":::: Show Articles in details"
  end
end
