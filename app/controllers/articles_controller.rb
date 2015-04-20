class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit]

  def index
    @articles = Article.all
  end

  def create
   @article = Article.create(article_params)
   @article.save

   redirect_to @article
  end

  def show
  end

  def edit
  end


  private
  def article_params
    params.permit(:title, :text)
  end

  def find_article
    @article = Article.find(params[:id])
  end

end
