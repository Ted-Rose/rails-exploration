class ArticlesController < ApplicationController
  def index
    @articles = Article.all
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
      render :new, status: :unprocessable_entity
    end
  end

  private
    # Define allowed form parameters that can be sent to db
    def article_params
      # require(:article) to raise ParameterMissing in absence of it
      # permit(:title, :body) to raise ForbiddenAttributesError if other attributes
      # beside :article and :title and :body are sent
      params.require(:article).permit(:title, :body)
    end
end
