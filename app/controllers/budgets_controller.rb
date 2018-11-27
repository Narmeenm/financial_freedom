class BudgetsController < ApplicationController

  	before_action :set_budget, only: [:show, :edit, :update, :destroy]
  def index 
    @budgets = Budget.all     # GET /budgets
  end

  def show         # GET /budgets/:id
  	@budget = Budget.find(params[:id])
  end

  def new           # GET /budgets/new
  	@budget = Budget.new
  end

  def create        # POST /budgets
  	@budget = Budget.new(budget_params)
  	@budget.user = current_user
    if @budget.save!
    	redirect_to budgets_path(@budget)
    else 
    	render :new	
  	end
  end

  def edit          # GET /budgets/:id/edit
  	@budget = Budget.find(params[:id])
  end

  def update        # PATCH /budgets/:id
  	@budget = Budget.find(params[:id])
    @budget.update(budget_params)
  end

  def destroy       # DELETE /budgets/:id
  	
    @budget.destroy
    redirect_to budgets_path
  end


 private
  def budget_params
    params.require(:budget).permit(:name, :description, :amount_cents, :start_date ,:end_date ,:category_list)
  end

    def set_budget
    @budget = Budget.find(params[:id])
  end
end
