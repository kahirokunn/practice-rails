class ArticlesController < ApplicationController
  def new
  end

  def show
    @article = Article.find(params[:id])
  end

  def change
    create_table :articles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end

  def create
    @article = Article.new(article_params)

    @article.save
    redirect_to @article
  end


  def article_params
    params.require(:article).permit(:title, :text)
  end
end
