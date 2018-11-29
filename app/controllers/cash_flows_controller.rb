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
    @cash_flow.save
    if @cash_flow.save!
    	redirect_to budget_cash_flows_path(@cash_flow)
    else
    	render :new
  	end
  end

  def edit

  end

   def update        # PATCH /budgets/:id
  	@cash_flow = CashFlow.find(params[:id])
    @cash_flow.update(cashflow_params)
  end

  def destroy
    @cash_flow.destroy
    redirect_to budget_cash_flows_path
  end


 private
  def cashflow_params
    params.require(:cash_flow).permit(:price_cents,:date,:budget_id )
  end

    def set_cashflow
    @cash_flow = CashFlow.find(params[:id])
  end


end
