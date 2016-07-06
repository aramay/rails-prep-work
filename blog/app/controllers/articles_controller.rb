class ArticlesController < ApplicationController
  # standard CRUD actions in each controller in the following order: index, show, new, edit, create, update and destroy.
  def index
    @articles = Article.all
  end

  def show
    # binding.pry
    @article = Article.find(params[:id])
  end

  def new

  end

  def create
    # render plain: params[:article].inspect
    # @article = Article.new(params[:article])
    @article = Article.new(article_params)

    @article.save
    redirect_to @article

  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
