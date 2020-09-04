class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users, include: [:expenses]
    end

    def create
        @user = User.create(
            username: params[:username],
            password: params[:password]
        )
        render json: @user
    end

    def show
        @user = User.find(params[:id])
        render json: @user, include: [:expenses]
    end

    def destroy
        @user = User.find(params[:id])
        @user.expenses.destroy_all
        render json: @user, include: [:expenses]
    end
end
