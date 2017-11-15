class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)

    @article.save
    redirect_to @article
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(article_update_params)
      redirect_to @article, notice: "Article has been updated."
    else
      render "edit"
    end
  end

  private
  def article_params
    params.permit(:name, :content, :author_name)
  end
  def article_update_params
    params[:article].permit(:name, :content, :author_name)
  end
end
