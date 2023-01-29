class ArticlesController < ApplicationController

  def index
    @count = Article.count
    @articles = Article.order(created_at: :desc).limit(30)
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to "/articles"
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(title: params[:article][:title], body: params[:article][:body])

    if @article.save
      redirect_to "/articles/#{@article.id}"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find params[:id]

    if @article.update(title: params[:title], body: params[:body])
      redirect_to "/articles/#{@article.id}"
    else
      render :new, status: :unprocessable_entity
    end
  end
end
