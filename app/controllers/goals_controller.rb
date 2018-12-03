class GoalsController < ApplicationController
  before_action :set_goal

  def new
    @goal = Goal.new
  end

  def index
    @goals = Goal.find(current_user.goal_ids)    # GET /budgets
  end

 private

  def goal_params
    params.require(:goal).permit(:name, :image_goal )
  end

  def set_goal
    @goal = Goal.find(params[:id])
  end
end
