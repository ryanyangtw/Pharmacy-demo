class ArticlesController < ApplicationController
  before_action :find_article, :only=>[ :show, :update, :destroy]

  def index
    #binding.pry
    @articles = Article.all.order("id ASC")
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
  end

  def update
  end

  def destroy
  end

  private
  def find_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title ,:content,:image)
  end
end
