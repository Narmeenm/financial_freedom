class GoalsController < ApplicationController
before_action :set_cashflow, only: [:show, :edit, :update, :destroy]




 private
  def goal_params
    params.require(:goal).permit(:name,:description,:image_goal )
  end

    def set_goal
      @goal = Goal.find(params[:id])
    end

end
