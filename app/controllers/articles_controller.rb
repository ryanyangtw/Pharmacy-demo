class ArticlesController < ApplicationController
  before_action :find_article, :only=>[ :show, :update, :destroy]

  def index
    #binding.pry
    @articles = Article.order("id ASC")
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    #binding.pry
    @article = Article.find(params[:id])
    if(@article.update(article_params))
      redirect_to articles_path
    else
      render :edit
    end
  end

  def destroy
    if(@article.destroy)
      redirect_to admin_articles_path
    else
    end
  end

  private
  def find_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title ,:content,:image, :description)
  end
end
