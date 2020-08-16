class ExpensesController < ApplicationController
    def index
        @expenses = Expense.all
        render json: @expenses
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
