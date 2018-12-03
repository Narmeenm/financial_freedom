class CashFlowsController < ApplicationController

      before_action :set_cashflow, only: [:show, :edit, :update, :destroy]

  def index
    @cash_flows = CashFlow.find(current_user.cash_flow_ids)
  # GET /budgets
  end

  def show         # GET /budgets/:id
  	@cash_flow = CashFlow.find(params[:id])
  end

  def new
    if current_user.budgets.present?         # GET /budgets/new
    	@cash_flow = CashFlow.new
      @budgets = Budget.where(user_id: current_user.id)
      @categories = []
      @budgets.each { |budget| @categories.push(Category.find(budget.category_id))}
    else
      redirect_to controller: 'budgets', action: 'new'
    end

  end


  def create        # POST /budgets
  	@cash_flow = CashFlow.new(cashflow_params)
  	@cash_flow.user = current_user

    # @budget.Budget_balance
    # @budget.Budget_balance += @cash_flow.price_cents
    # @budget.save!
    @cash_flow.save
    if  @cash_flow.save!
    	redirect_to budget_cash_flows_path(@cash_flow.budget)
    else
    	render :new
  	end
  end

  def edit

  end

   def update        # PATCH /budgets/:id
  	@cash_flow = CashFlow.find(params[:id])
    @cash_flow.update(cashflow_params)
    redirect_to budget_cash_flows_path(@cash_flow.budget)
  end

  def destroy
    @cash_flow.destroy
    redirect_to budget_cash_flows_path(@cash_flow.budget)
  end



 private
  def cashflow_params
    params.require(:cash_flow).permit(:price_cents,:date,:budget_id)
  end

    def set_cashflow
    @cash_flow = CashFlow.find(params[:id])
  end


end
