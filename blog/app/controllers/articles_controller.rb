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
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    # render plain: params[:article].inspect
    # @article = Article.new(params[:article])
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end

  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end

  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
