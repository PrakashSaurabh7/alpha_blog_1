class ArticlesController < ApplicationController
  def showAll
    @articles = TabArticle.all
  end
  def showById
    @article = TabArticle.find(params[:id])
  end
  def new
    @article = TabArticle.new
  end
  def add
    @article = TabArticle.new(params.require(:tab_article).permit(:tab_title, :tab_description))
    if @article.save
      flash[:notice] = "Article created successfully"
      redirect_to "/"
    else
      render "new"
    end
  end
  def edit
    @article = TabArticle.find(params[:id])
  end
  def update
    @article = TabArticle.find(params[:id])
    if @article.update(params.require(:tab_article).permit(:tab_title, :tab_description))
      flash[:notice] = "Data updated successfully"
      redirect_to "/"
    else
      render "edit"
    end
  end
  def delete
    @article = TabArticle.find(params[:id])
    @article.destroy
    redirect_to "/"
  end
end
