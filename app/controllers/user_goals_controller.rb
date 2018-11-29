class UserGoalsController < ApplicationController
  before_action :set_user_goal, only: [:show,  :update, :destroy]




  def new
    @user_goal = UserGoal.new
  end

  def show         # GET /budgets/:id
    @user_goal = UserGoal.find(params[:id])
  end


  def create
    @user_goal = UserGoal.new(user_goal_params)
    @user_goal.user = current_user
    @goal = Goal.find(params[:user_goal][:goal_id])
    @user_goal.goal = @goal
    @user_goal.save
    if @user_goal.save!
      redirect_to user_goal_path(@user_goal)
    else
      render :new
    end
  end





  def destroy
    @user_goal.destroy
    redirect_to budget_cash_flows_path
  end


 private
  def user_goal_params
    params.require(:user_goal).permit(:user_id,:goal_id,:amount_cents )
  end

    def set_user_goal
      @user_goal = UserGoal.find(params[:id])
    end
end
