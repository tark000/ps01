class ExpensesController < ApplicationController
  def create
    safe_params = clean_params(params).require(:expense).permit(:user_id, :outlay_type_id, :description)
    Expense.create(safe_params)
    redirect_to action: "index"
  end

  def new
    @expense_form = Expense.new
  end

  def show
  end

  def index
    @expenses = current_user.expenses

  end

  def clean_params(params)
    ActionController::Parameters.new(params)
  end
end
