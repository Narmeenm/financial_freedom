class BudgetsController < ApplicationController
  def index
    @budgets = Budget.all     # GET /budgets
  end

  def show
    @budget = Budget.find(params[:id])
  end

end
