class BudgetsController < ApplicationController
  def index 
    @budgets = Budget.all     # GET /budgets
  end
end
