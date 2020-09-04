class ExpensesController < ApplicationController
    # before_action :authenticate, only: [:index, :create]
    # before_action :authenticate, only: [:create]
    def index
        @expenses = Expense.all
        render json: @expenses, include: [:user]
    end

    def create
        @expense = Expense.create(
            user_id: params[:user_id],
            item: params[:item],
            amount: params[:amount],
        )
        render json: @expense
    end
end
