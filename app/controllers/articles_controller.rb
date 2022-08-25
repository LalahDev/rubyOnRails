class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def create
    @article = Article.new(title: "...", body: "...")

    if @article.save
      render :show
    else
      render :new, status: :unprocessable_entity
    end
  end
  # private
  #   def article_params
  #     params.require(:article).permit(:title, :body)
  #   end
end
