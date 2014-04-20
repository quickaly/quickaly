class ExpensesController < ApplicationController
def new
end

def show
@expense = Expense.find(params[:id])
end

def create
@expense = Expense.new(expense_params)
@expense.save
redirect_to @expense
end

private
  def expense_params
    params.require(:expense).permit(:category, :description, :amount, :currency)
  end
end
