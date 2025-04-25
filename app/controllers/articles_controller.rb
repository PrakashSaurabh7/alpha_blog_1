class ArticlesController < ApplicationController
  def showAll
    @articles = TabArticle.all
  end
  def showById
    @article = TabArticle.find(params[:id])
  end
  def new
  end
  def add
    @article = TabArticle.new(params.require(:tab_article).permit(:tab_title, :tab_description))
    @article.save
    redirect_to "/"
  end
  def edit
    @article = TabArticle.find(params[:id])
  end
  def update
    @article = TabArticle.find(params[:id])
    @article.update(params.require(:tab_article).permit(:tab_title, :tab_description))
    redirect_to "/"
  end
  def delete
    @article = TabArticle.find(params[:id])
    @article.destroy
    redirect_to "/"
  end
end
