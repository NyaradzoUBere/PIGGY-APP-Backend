class ArticlesController < ApplicationController
    # before_action :authenticate, only: [:index]
    def index
        @article = Article.all.sample(3)
        render json: @article
    end
end
