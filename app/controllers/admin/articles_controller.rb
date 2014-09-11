class Admin::ArticlesController < ApplicationController
  def index
    @articles = Article.order('id ASC')
  end

  def edit
    #@article = Article.find(params[:id])
  end

  def update
    if(@article.update(article_params))
      redirect_to articles_path
    else
      render :edit
    end
  end

  private
  def article_params
    params.require(:article).permit(:title ,:content,:image, :description)
  end

end
