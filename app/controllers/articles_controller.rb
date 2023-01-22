class ArticlesController < ApplicationController

  def index
    @count = Article.count
    @articles = Article.limit(30)
  end

  def show
    @article = Article.find(params[:id])
  end

end
