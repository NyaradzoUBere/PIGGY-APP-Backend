class ArticlesController < ApplicationController
    def index
        @article = Article.all.sample(3)
        render json: @article
    end
end
