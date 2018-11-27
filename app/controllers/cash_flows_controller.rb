class CashFlowsController < ApplicationController
 
      before_action :set_cashflow, only: [:show, :edit, :update, :destroy]
 
  def index 
    @cash_flows = CashFlow.all     # GET /budgets
  end

  def show         # GET /budgets/:id
  	@cash_flows = CashFlow.find(params[:id])
  end

  def new           # GET /budgets/new
  	@cash_flow = CashFlow.new

  end
	

  def create        # POST /budgets
  	@cash_flow = CashFlow.new(cashflow_params)
  	@cash_flow.user = current_user
  	@cash_flow.budget = Budget.find(params[:cash_flow][:budget_id])
    @cash_flow.save
    if @cash_flow.save!
    	redirect_to cash_flow_path(@cash_flow)
    else 
    	render :new	
  	end
  end




 private
  def cashflow_params
    params.require(:cash_flow).permit(:name, :price_cents,:ate ,:end_date, :budget_id)
  end

    def set_cashflow
    @cash_flow = CashFlow.find(params[:id])
  end


end
