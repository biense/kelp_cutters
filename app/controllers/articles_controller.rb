class ArticlesController < ApplicationController

  def index
    if params[:query] && params[:query]!=""
      @articles = Article.basic_search(params[:query]).paginate(page: params[:page], per_page: 2)
    else
      @articles = Article.order("id DESC").all.paginate(page: params[:page], per_page: 10)
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
