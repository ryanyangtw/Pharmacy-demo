class Admin::ArticlesController < ApplicationController
  def index
    @articles = Article.order('id ASC')
  end

end
