# This is important so that the ruby doesn't confuse the application controller the
# the hosting app adds to the one that's used by the blogger app
require_dependency "blogger/application_controller"

module Blogger
  class ArticlesController < ApplicationController
    before_action :load_article, only: [:update, :destroy, :edit, :show]
    
    def new
      @article = Article.new
    end

    def edit
    end

    def create
      @article = Article.new article_params
      if @article.save
        redirect_to @article, message: 'Successfully created article'
      else
        render 'new'
      end
    end

    def update
      if @article.update article_params
        redirect_to @article, message: 'Updated article Successfully'
      else
        render 'edit'
      end
    end

    def destroy
      @article.destroy
      redirect_to blogger_articles_path, 'Removed post'
    end

    def show
    end

    def index
      @articles = Article.all
    end
  private

    def load_article
      @article = Article.find params[:id]
    end

    def article_params
      params.require(:article).permit(:title, :text)
    end
  end
end
